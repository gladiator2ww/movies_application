import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/models/filter_model.dart';
import 'package:movies_application/app/widgets/dialog_filters.dart';

class DialogService {
  final navigatorKey = Get.key;
  Future<FilterModel?> showDialogFilters(FilterModel filterModel) async {
    final result = await showDialog<FilterModel?>(
      context: navigatorKey.currentContext!,
      builder: (context) => DialogFilters(
        filterModel: filterModel,
        
      ),
    );

    if (result != null) return result;
  }
}
