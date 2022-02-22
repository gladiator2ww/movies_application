import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_application/generated/l10n.dart';

class SearchAppBar extends StatefulWidget {
  final void Function(String) onChanged;

  SearchAppBar({
    required this.onChanged,
  }) : super();

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  static const _lengthToSearch = 2;
  static const _millisecondsDuration = 400;
  final _searchTextEditingController = TextEditingController();
  Timer? _duration;
  String oldSearch = '';
  bool _isEnabled = false;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _searchTextEditingController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchTextEditingController.removeListener(_onSearchChanged);
    _searchTextEditingController.dispose();
    _duration?.cancel();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_searchTextEditingController.text.isNotEmpty && _focusNode.hasFocus) {
      setState(() => _isEnabled = true);
    } else {
      setState(() => _isEnabled = false);
    }
    if (_duration?.isActive ?? false) _duration?.cancel();
    _duration = Timer(const Duration(milliseconds: _millisecondsDuration), () {
      if ((_searchTextEditingController.text.length > _lengthToSearch &&
              _searchTextEditingController.text != oldSearch) ||
          (oldSearch.length > _searchTextEditingController.text.length &&
              _searchTextEditingController.text.isNotEmpty)) {
        oldSearch = _searchTextEditingController.text;
        print('123onChanged ${_searchTextEditingController.text}');
        widget.onChanged(_searchTextEditingController.text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      controller: _searchTextEditingController,
      style: Theme.of(context).textTheme.headline5,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search_outlined,
          size: 28,
        ),
        hintText: S.of(context).search_movie,
        border: InputBorder.none,
        suffixIcon: _isEnabled
            ? InkWell(
                onTap: () => _searchTextEditingController.clear(),
                child: Icon(
                  Icons.close,
                  size: 28,
                ),
              )
            : null,
      ),
    );
  }
}
