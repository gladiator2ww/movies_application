import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';

class MovieScreenImage extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;

  const MovieScreenImage({
    required this.width,
    required this.height,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) =>
          Center(child: MyCircularProgressIndicator()),
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fadeInCurve: Curves.easeIn,
      fadeInDuration: const Duration(seconds: 2),
      fadeOutCurve: Curves.easeOut,
      fadeOutDuration: const Duration(seconds: 2),
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
