import 'package:flutter/material.dart';

import 'package:movies_application/app/theme/branding_colors.dart';
import 'package:movies_application/generated/l10n.dart';

class MovieRankDetails extends StatelessWidget {
  final String rating;
  final String voteRating;
  final void Function() onTapAddSaved;
  MovieRankDetails({
    Key? key,
    required this.rating,
    required this.voteRating,
    required this.onTapAddSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        SizedBox(width: 70),
        Column(
          children: [
            Icon(
              Icons.star,
              size: 28,
              color: BrandingColors.iconStar,
            ),
            Text(
              '$rating/10',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: BrandingColors.iconStar),
            ),
            Text(
              voteRating,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        SizedBox(width: 80),
        ElevatedButton(
          onPressed: onTapAddSaved,
          child: Container(
            child: Row(
              children: [
                Icon(Icons.add, color: BrandingColors.primaryText),
                Text(
                  S.of(context).add_to_saved,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
