import 'package:flutter/material.dart';
import 'package:movies_application/app/theme/branding_colors.dart';
import 'movie_image.dart';

class ActorMoviesCard extends StatelessWidget {
  final String itemImage;

  final String itemTitle;
  final String itemYear;

  const ActorMoviesCard({
    Key? key,
    required this.itemImage,
    required this.itemTitle,
    required this.itemYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      elevation: 5,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MovieImage(width: 140, height: 210, imageUrl: itemImage),
          Container(
            width: 130,
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  itemYear,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
