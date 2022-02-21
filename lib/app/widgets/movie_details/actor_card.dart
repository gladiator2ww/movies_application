import 'package:flutter/material.dart';
import '../movie_image.dart';

class ActorCard extends StatelessWidget {
  final String itemImage;
  final String itemName;
  final String asCharacter;

  const ActorCard({
    Key? key,
    required this.itemImage,
    required this.itemName,
    required this.asCharacter,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MovieImage(width: 140, height: 210, imageUrl: itemImage),
            Text(
              itemName,
              style: Theme.of(context).textTheme.bodyText1,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            Text(
              asCharacter,
              style: Theme.of(context).textTheme.bodyText2,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
