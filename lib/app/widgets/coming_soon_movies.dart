import 'package:flutter/material.dart';

import 'movie_image.dart';

class ComingSoonMovies extends StatelessWidget {
  final String itemImage;
  final String itemTitle;
  final String itemRuntimeStr;
  final String itemRealiseState;

  const ComingSoonMovies({
    Key? key,
    required this.itemImage,
    required this.itemTitle,
    required this.itemRuntimeStr,
    required this.itemRealiseState,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MovieImage(
            width: 300,
            height: 360,
            imageUrl: itemImage,
          ),
          Text(
            itemTitle,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: itemRuntimeStr.isEmpty
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemRuntimeStr,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  itemRealiseState,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
