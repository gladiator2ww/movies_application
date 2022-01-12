import 'package:flutter/cupertino.dart';

class MovieImage extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;

  const MovieImage({
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
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        image: DecorationImage(
          image: Image.network(imageUrl).image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
