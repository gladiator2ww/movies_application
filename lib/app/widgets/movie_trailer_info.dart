import 'package:flutter/material.dart';
import 'package:movies_application/generated/l10n.dart';

class MovieTrailerInfo extends StatelessWidget {
  final String plot;
  final String countries;
  final String directors;

  MovieTrailerInfo({
    Key? key,
    required this.plot,
    required this.countries,
    required this.directors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${S.of(context).director} $directors',
            style: Theme.of(context).textTheme.headline2,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          SizedBox(height: 5),
          Text(
            '${S.of(context).countries} $countries',
            style: Theme.of(context).textTheme.headline2,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          SizedBox(height: 5),
          Text(
            plot,
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
