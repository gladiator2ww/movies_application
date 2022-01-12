import 'package:flutter/material.dart';

class MovieTrailer extends StatelessWidget {
  const MovieTrailer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network(
                  'https://www.imdb.com/video/imdb/vi2333017881/imdb/embed')
              .image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
