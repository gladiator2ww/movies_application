import 'package:flutter/material.dart';
import 'package:movies_application/app/theme/branding_colors.dart';
import '../movie_image.dart';

class SimilarMovieCard extends StatelessWidget {
  final String itemImage;
  final String itemRating;
  final String itemTitle;

  const SimilarMovieCard({
    Key? key,
    required this.itemImage,
    required this.itemRating,
    required this.itemTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      elevation: 5,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: SizedBox(
        height: 260,
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                itemTitle,
                style: Theme.of(context).textTheme.bodyText1,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
