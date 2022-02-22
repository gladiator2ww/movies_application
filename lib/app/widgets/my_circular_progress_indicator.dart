import 'package:flutter/material.dart';
import 'package:movies_application/app/theme/branding_colors.dart';

class MyCircularProgressIndicator extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: BrandingColors.primary,
    );
  }
}
