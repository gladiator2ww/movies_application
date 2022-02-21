import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  final String genre;
  GenreItem({
    Key? key,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10, top: 15, bottom: 15, left: 10),
      elevation: 3,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 80,
        height: 30,
        child: Text(
          genre,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
