import 'package:flutter/material.dart';

import 'package:movies_application/app/theme/branding_colors.dart';

import 'movie_image.dart';

class MovieSimilarCard extends StatelessWidget {
  final String itemImage;
  final String itemRating;
  final String itemTitle;

  const MovieSimilarCard({
    Key? key,
    required this.itemImage,
    required this.itemRating,
    required this.itemTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10),
      elevation: 3,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: SizedBox(
        height: 260,
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieImage(width: 140, height: 210, imageUrl: itemImage),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: BrandingColors.iconStar,
                  size: 20,
                ),
                Text(
                  itemRating,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Text(
              itemTitle,
              style: Theme.of(context).textTheme.bodyText1,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
