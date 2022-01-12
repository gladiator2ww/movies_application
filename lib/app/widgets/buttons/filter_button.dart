import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final void Function() onTap;
  const FilterButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(Icons.tune),
    );
  }
}
