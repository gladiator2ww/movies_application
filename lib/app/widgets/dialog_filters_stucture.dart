import 'package:flutter/material.dart';
import 'package:movies_application/app/models/filter_model.dart';
import 'package:movies_application/app/models/sorting.dart';
import 'package:movies_application/app/theme/branding_colors.dart';
import 'dialog_filters.dart';

class DialogFiltersStructure extends StatefulWidget {
  final FilterModel filterModel;
  final void Function(Sorting) onSortingTap;
  final void Function(Filters) onFilterTap;
  final String nameSortingSection;
  final List<Sorting> typeListSorting;
  final String nameFilterSection;
  final List<Filters> typeListFilters;

  const DialogFiltersStructure({
    Key? key,
    required this.typeListSorting,
    required this.typeListFilters,
    required this.nameSortingSection,
    required this.nameFilterSection,
    required this.onSortingTap,
    required this.onFilterTap,
    required this.filterModel,
  });

  @override
  State<DialogFiltersStructure> createState() => _DialogFiltersStructureState();
}

class _DialogFiltersStructureState extends State<DialogFiltersStructure> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 47,
            alignment: Alignment.centerLeft,
            child: Text(
              widget.nameSortingSection,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 290,
            child: ListView.builder(
                itemCount: widget.typeListSorting.length,
                itemBuilder: (context, index) {
                  final item = widget.typeListSorting[index];
                  return FilterItem(
                    title: item.toSortingString(),
                    isChoosen: widget.filterModel.sortingItems
                        .any((element) => element == item),
                    onTap: (isChoosen) => widget.onSortingTap(item),
                    color: item.index % 2 == 0
                        ? BrandingColors.stringFilters
                        : BrandingColors.stringSorting,
                  );
                }),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 47,
            alignment: Alignment.centerLeft,
            child: Text(
              widget.nameFilterSection,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 290,
            child: ListView.builder(
                itemCount: widget.typeListFilters.length,
                itemBuilder: (context, index) {
                  final item = widget.typeListFilters[index];
                  return FilterItem(
                    title: item.toFiltersString(),
                    isChoosen: widget.filterModel.filtersItems
                        .any((element) => element == item),
                    onTap: (isChoosen) => widget.onFilterTap(item),
                    color: item.index % 2 == 0
                        ? BrandingColors.stringFilters
                        : BrandingColors.stringSorting,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
