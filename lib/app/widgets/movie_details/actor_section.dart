import 'package:flutter/material.dart';
import 'package:movies_application/app/models/actor_model/actor_model.dart';
import 'package:movies_application/generated/l10n.dart';
import 'actor_card.dart';

class ActorSection extends StatelessWidget {
  final List<ActorModel> typeState;
  final void Function(String) onTapActorDetails;

  const ActorSection({
    Key? key,
    required this.typeState,
    required this.onTapActorDetails,
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
              S.of(context).cast,
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
                    onTap: () => onTapActorDetails(item.id),
                    child: ActorCard(
                      itemImage: item.image,
                      itemName: item.name,
                      asCharacter: item.asCharacter,
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
