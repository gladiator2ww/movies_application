import 'package:flutter/material.dart';

import 'package:movies_application/app/theme/branding_colors.dart';

class AddToSavedIconButton extends StatelessWidget {
  final void Function() onTap;
  final bool isFavorite;

  const AddToSavedIconButton({
    Key? key,
    required this.onTap,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: 0.6,
          child: Icon(
            Icons.bookmark,
            size: 60,
            color: BrandingColors.primary,
          ),
        ),
        Positioned(
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: onTap,
            icon: isFavorite
                ? Icon(
                    Icons.check,
                    size: 30,
                  )
                : Icon(
                    Icons.add,
                    size: 30,
                  ),
          ),
        )
      ],
    );
  }
}
