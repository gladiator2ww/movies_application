import 'package:flutter/material.dart';
import 'package:movies_application/app/widgets/movie_details/movie_screen_image.dart';
import 'package:movies_application/generated/l10n.dart';

class BoxOfficeItem extends StatelessWidget {
  final String title;
  final String image;
  final String weekend;
  final String gross;
  final String weeks;
  BoxOfficeItem({
    Key? key,
    required this.title,
    required this.image,
    required this.weekend,
    required this.gross,
    required this.weeks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          MovieScreenImage(
            width: 100,
            height: 140,
            imageUrl: image,
          ),
          SizedBox(width: 5),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'weekend: $weekend',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  'gross: $gross',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  'weeks: $weeks',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
