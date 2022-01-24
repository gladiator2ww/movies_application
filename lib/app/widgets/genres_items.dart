import 'package:flutter/material.dart';

class GenresItems extends StatelessWidget {
  final String genres;
  GenresItems({
    Key? key,
    required this.genres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        width: 40,
        height: 15,
        child: Text(
          genres,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
