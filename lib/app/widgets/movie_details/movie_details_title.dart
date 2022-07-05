import 'package:flutter/material.dart';

class MovieDetailsTitle extends StatelessWidget {
  final String title;
  final String year;
  final String? runtimeStr;

  const MovieDetailsTitle({
    Key? key,
    required this.title,
    required this.year,
    required this.runtimeStr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                year,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                runtimeStr ?? '',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
