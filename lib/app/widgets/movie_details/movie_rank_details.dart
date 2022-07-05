import 'package:flutter/material.dart';

import 'package:movies_application/app/theme/branding_colors.dart';
import 'package:movies_application/app/widgets/buttons/add_to_saved_button.dart';
import 'package:movies_application/generated/l10n.dart';

import '../../models/movie_details_model/movie_details_model.dart';

class MovieRankDetails extends StatelessWidget {
  final String rating;
  final String voteRating;
  final void Function() onTapAddSaved;
  final bool isFavorite;

  MovieRankDetails({
    Key? key,
    required this.rating,
    required this.voteRating,
    required this.onTapAddSaved,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 70),
      child: Row(
        children: [
          Column(
            children: [
              Icon(
                Icons.star,
                size: 28,
                color: BrandingColors.iconStar,
              ),
              Text(
                '$rating${S.of(context).rate_of_10}',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: BrandingColors.iconStar),
              ),
              Text(
                voteRating,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: BrandingColors.iconStar,
                    ),
              ),
            ],
          ),
          SizedBox(width: 80),
          AddToSavedButton(
            onTap: onTapAddSaved,
            isFavorite: isFavorite,
          ),
        ],
      ),
    );
  }
}
