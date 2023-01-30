

import 'package:flutter/material.dart';
import 'package:movies_application/generated/l10n.dart';

class CancelButton extends StatelessWidget {
  final void Function() onTap;
  const CancelButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        S.of(context).cancel,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
