import 'package:flutter/material.dart';
import 'package:movies_application/app/theme/branding_colors.dart';
import 'package:movies_application/generated/l10n.dart';

class BottomBar extends StatefulWidget {
  final int selectedIndexPage;
  final void Function(int) onTapPage;

  const BottomBar({
    Key? key,
    required this.selectedIndexPage,
    required this.onTapPage,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: BrandingColors.primaryText.withOpacity(1),
      backgroundColor: BrandingColors.background.withOpacity(0.8),
      selectedItemColor: BrandingColors.primary,
      type: BottomNavigationBarType.fixed,
      onTap: widget.onTapPage,
      currentIndex: widget.selectedIndexPage,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: S.of(context).home,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: S.of(context).search,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.turned_in,
          ),
          label: S.of(context).saved,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: S.of(context).you,
        ),
      ],
    );
  }
}
