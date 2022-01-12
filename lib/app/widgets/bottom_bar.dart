import 'package:flutter/material.dart';
import 'package:movies_application/app/pages/homepage.dart';
import 'package:movies_application/app/pages/saved_page.dart';
import 'package:movies_application/app/pages/search_page.dart';
import 'package:movies_application/app/pages/user_page.dart';
import 'package:movies_application/app/theme/branding_colors.dart';
import 'package:movies_application/generated/l10n.dart';


class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    var _indexPage = 0;
    final List _page = [
      HomePage(),
      SearchPage(),
      SavedPage(),
      UserPage(),
    ];
    return BottomNavigationBar(
        unselectedItemColor: BrandingColors.primaryText.withOpacity(1),
        backgroundColor: BrandingColors.background.withOpacity(0.8),
        selectedItemColor: BrandingColors.primary,
        type: BottomNavigationBarType.fixed,
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
        currentIndex: _indexPage,
        onTap: (int index) {
          setState(() {
            _page[_indexPage] = index;
          });
        });
  }
}
