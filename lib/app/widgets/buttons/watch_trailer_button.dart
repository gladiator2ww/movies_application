import 'package:flutter/material.dart';
import 'package:movies_application/app/theme/branding_colors.dart';
import 'package:movies_application/generated/l10n.dart';

class WatchTrailerButton extends StatelessWidget {
  final void Function() onTap;
  
  const WatchTrailerButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      width: 140,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: BrandingColors.iconStar,
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          S.of(context).watch_trailer,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
