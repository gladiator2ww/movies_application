import 'package:flutter/material.dart';
import 'package:movies_application/app/theme/branding_colors.dart';
import 'package:movies_application/generated/l10n.dart';

class AddToSavedButton extends StatelessWidget {
  final void Function() onTap;
  final bool isFavorite;
  const AddToSavedButton({
    Key? key,
    required this.onTap,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Container(
        child: Row(
          children: [
            Icon(
              isFavorite ? Icons.check : Icons.add,
              color: BrandingColors.primaryText,
            ),
            Text(
              S.of(context).add_to_saved,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
