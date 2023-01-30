import 'package:flutter/material.dart';
import 'package:movies_application/generated/l10n.dart';



class DoneButton extends StatelessWidget {
  final void Function() onTap;
  const DoneButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        S.of(context).done,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
