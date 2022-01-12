import 'package:flutter/material.dart';
import 'package:movies_application/generated/l10n.dart';

class SeeAllButton extends StatelessWidget {
  final void Function() onTap;
  const SeeAllButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        S.of(context).see_all,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
