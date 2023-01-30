import 'package:flutter/material.dart';
import 'package:movies_application/app/widgets/movie_details/movie_screen_image.dart';
import 'package:movies_application/generated/l10n.dart';

class MovieDetailsInfo extends StatelessWidget {
  final String urlMovieImage;
  final String directors;
  final String countries;
  final String plot;
  final void Function(String) onTapReadDescription;

  MovieDetailsInfo({
    Key? key,
    required this.urlMovieImage,
    required this.directors,
    required this.countries,
    required this.plot,
    required this.onTapReadDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MovieScreenImage(
            width: 180,
            height: 280,
            imageUrl: urlMovieImage,
          ),
          SizedBox(width: 10),
          SizedBox(
            width: 180,
            height: 280,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${S.of(context).director} $directors',
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  '${S.of(context).countries} $countries',
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                GestureDetector(
                  onTap: () => onTapReadDescription(plot),
                  child: Text(
                    plot,
                    style: Theme.of(context).textTheme.subtitle1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
