import 'package:flutter/material.dart';
import 'package:movies_application/app/models/actor_filmography_model/actor_filmography_model.dart';
import 'package:movies_application/generated/l10n.dart';
import 'actor_filmography_card.dart';

class ActorFilmographySection extends StatelessWidget {
  final List<ActorFilmographyModel> typeState;
  final void Function(String) onTapMovieDetailsEvent;

  const ActorFilmographySection({
    Key? key,
    required this.typeState,
    required this.onTapMovieDetailsEvent,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 20),
      elevation: 5,
      child: Container(
        height: 340,
        padding: EdgeInsets.only(top: 20, left: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).filmography,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: typeState.length,
                itemBuilder: (context, index) {
                  final item = typeState[index];

                  return GestureDetector(
                    onTap: () => onTapMovieDetailsEvent(item.id),
                    child: ActorFilmographyCard(
                      itemImage: item.image,
                      itemTitle: item.title,
                      itemYear: item.year,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
