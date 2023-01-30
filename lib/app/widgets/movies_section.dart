import 'package:flutter/material.dart';
import 'package:movies_application/app/models/movie_view_model/movie_view_model.dart';
import 'package:movies_application/app/widgets/buttons/add_to_saved_icon_buton.dart';
import 'buttons/see_all_button.dart';
import 'movie_model_card.dart';

class MoviesSection extends StatelessWidget {
  final List<MovieViewModel> typeState;
  final String name;
  final void Function() onTapSeeAll;
  final void Function(String) onTapMovieDetails;
  final void Function(String) onTapAddSavedIcon;

  const MoviesSection({
    Key? key,
    required this.typeState,
    required this.name,
    required this.onTapSeeAll,
    required this.onTapMovieDetails,
    required this.onTapAddSavedIcon,
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
                  onTap: () => onTapMovieDetails(item.id),
                  child: Stack(
                    children: [
                      MovieModelCard(
                        itemImage: item.image,
                        itemRating: item.imDbRating ?? '',
                        itemTitle: item.title,
                        itemYear: item.year ?? '',
                      ),
                      Positioned(
                        bottom: 220,
                        left: 92,
                        child: AddToSavedIconButton(
                          onTap: () => onTapAddSavedIcon(item.id),
                          isFavorite: item.isFavorite,
                        ),
                      ),
                    ],
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
