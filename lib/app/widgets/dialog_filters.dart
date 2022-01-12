import 'package:flutter/material.dart';
import 'package:movies_application/app/models/filter_model.dart';
import 'package:movies_application/app/models/sorting.dart';
import 'package:movies_application/app/theme/branding_colors.dart';
import 'package:movies_application/generated/l10n.dart';

import 'buttons/cancel_button.dart';
import 'buttons/done_button.dart';
import 'dialog_filters_stucture.dart';


class DialogFilters extends StatefulWidget {
  final FilterModel filterModel;

  DialogFilters({
    Key? key,
    required this.filterModel,
  }) : super(key: key);

  @override
  _DialogFiltersState createState() => _DialogFiltersState();
}

class _DialogFiltersState extends State<DialogFilters> {
  late FilterModel _filterModel = widget.filterModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CancelButton(onTap: () {
              Navigator.of(context).pop();
            }),
            Center(
              child: Text(
                S.of(context).filters,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            DoneButton(
              onTap: () => Navigator.of(context).pop(_filterModel),
            ),
          ],
        ),
      ),
      body: DialogFiltersStructure(
        nameSortingSection: S.of(context).by_sort,
        typeListSorting: Sorting.values,
        nameFilterSection: S.of(context).by_filter,
        typeListFilters: Filters.values,
        filterModel: _filterModel,
        onSortingTap: (item) {
          setState(() {
            final isChoosen = _filterModel.sortingItems.isNotEmpty;
            isChoosen
                ? _filterModel.sortingItems.clear()
                : _filterModel.sortingItems.add(item);
          });
        },
        onFilterTap: (item) {
          setState(() {
            final isChoosen = _filterModel.filtersItems.isNotEmpty;
            isChoosen
                ? _filterModel.filtersItems.clear()
                : _filterModel.filtersItems.add(item);
          });
        },
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  final void Function(bool) onTap;
  final String title;
  final bool isChoosen;
  final Color color;

  const FilterItem({
    Key? key,
    required this.onTap,
    required this.title,
    this.isChoosen = false,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(isChoosen),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 47,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            Spacer(),
            isChoosen
                ? (Icon(
                    Icons.check_box,
                    size: 25,
                    color: BrandingColors.primary,
                  ))
                : (Icon(
                    Icons.check_box_outline_blank,
                    size: 25,
                    color: BrandingColors.primary,
                  )),
          ],
        ),
      ),
    );
  }
}
