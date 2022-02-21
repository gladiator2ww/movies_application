import 'package:flutter/material.dart';
import 'package:movies_application/app/models/movie_model/movie_model.dart';
import 'buttons/see_all_button.dart';
import 'movie_model_card.dart';

class MoviesSection extends StatelessWidget {
  final List<MovieModel> typeState;
  final String name;
  final void Function() onTapSeeAll;
  final void Function(String) onTapMovieView;

  const MoviesSection({
    Key? key,
    required this.typeState,
    required this.name,
    required this.onTapSeeAll,
    required this.onTapMovieView,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: Column(
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.headline6,
              ),
              Spacer(),
              SeeAllButton(onTap: onTapSeeAll),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: typeState.length,
              itemBuilder: (context, index) {
                final item = typeState[index];

                return GestureDetector(
                  onTap: () => onTapMovieView(item.id),
                  child: MovieModelCard(
                    itemImage: item.image,
                    itemRating: item.imDbRating,
                    itemTitle: item.title,
                    itemYear: item.year,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
