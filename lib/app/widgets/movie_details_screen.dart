import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;

  const MovieDetailsScreen({
    required this.width,
    required this.height,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network(imageUrl).image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
