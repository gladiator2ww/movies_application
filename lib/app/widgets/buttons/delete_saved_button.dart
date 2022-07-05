import 'package:flutter/material.dart';

class DeleteSavedButton extends StatelessWidget {
  final void Function() onTapDelete;

  const DeleteSavedButton({
    Key? key,
    required this.onTapDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTapDelete,
      icon: Icon(
        Icons.delete,
      ),
    );
  }
}
