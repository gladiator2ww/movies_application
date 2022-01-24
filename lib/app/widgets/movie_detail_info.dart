import 'package:flutter/material.dart';

import 'package:movies_application/app/widgets/genres_items.dart';

class MovieDetailInfo extends StatelessWidget {
  final String urlMovieImage;
  final String imDbRating;
  final String genres;
  final String directors;
  final String countries;
  final String plot;
  final void Function(String) onTap;
  final bool isReadMore;

  MovieDetailInfo({
    Key? key,
    required this.urlMovieImage,
    required this.imDbRating,
    required this.genres,
    required this.directors,
    required this.countries,
    required this.plot,
    required this.onTap,
    this.isReadMore = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 180,
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.network(urlMovieImage).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'directors: $directors',
                      style: Theme.of(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Text(
                      'countries: $countries',
                      style: Theme.of(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      'genres: $genres',
                      style: Theme.of(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    GestureDetector(
                      onTap: () => onTap(plot),
                      child: isReadMore
                          ? Text(plot,
                              style: Theme.of(context).textTheme.subtitle1)
                          : Text(
                              plot,
                              style: Theme.of(context).textTheme.subtitle1,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 10,
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
