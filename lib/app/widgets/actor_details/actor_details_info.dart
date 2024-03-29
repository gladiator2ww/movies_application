import 'package:flutter/material.dart';
import 'package:movies_application/generated/l10n.dart';

class ActorDetailsInfo extends StatelessWidget {
  final String urlMovieImage;
  final String birthDate;
  final String height;
  final String summary;
  final String awards;

  ActorDetailsInfo({
    Key? key,
    required this.urlMovieImage,
    required this.birthDate,
    required this.height,
    required this.summary,
    required this.awards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
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
                  summary,
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 8,
                ),
                SizedBox(height: 10),
                Text(
                  '${S.of(context).born} $birthDate',
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 10),
                Text(
                  '${S.of(context).awards} $awards',
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                SizedBox(height: 10),
                Text(
                  '${S.of(context).height} $height',
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
