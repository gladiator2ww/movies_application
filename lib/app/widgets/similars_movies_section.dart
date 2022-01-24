import 'package:flutter/material.dart';
import 'package:movies_application/app/models/movie_model.dart';
import 'package:movies_application/generated/l10n.dart';
import 'movie_similar_card.dart';

class SimilarsMoviesSection extends StatelessWidget {
  final List<MovieModel> typeState;

  final void Function(String) onTapMovieDetailsEvent;

  const SimilarsMoviesSection({
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
        height: 330,
        padding: EdgeInsets.only(top: 20, left: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).similars_movies,
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
                    child: MovieSimilarCard(
                      itemImage: item.image,
                      itemTitle: item.title,
                      itemRating: item.imDbRating,
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
