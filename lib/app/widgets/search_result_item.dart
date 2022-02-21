import 'package:flutter/material.dart';
import 'movie_details/movie_screen_image.dart';

class SearchResultItem extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  SearchResultItem({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          MovieScreenImage(
            width: 100,
            height: 140,
            imageUrl: image,
          ),
          SizedBox(width: 15),
          Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
