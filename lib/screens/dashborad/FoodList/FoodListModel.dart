import 'package:flutter/material.dart';
import 'package:responsiveuiflutter/model/api/apidata/FoodList.dart';
import 'package:responsiveuiflutter/model/repository/DashboardRepository.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class FoodListModel with ChangeNotifier {

  final int _pageSize = 5;

  Future<void> fetchPage(PagingController<int, FoodList> _pagingController, int pageKey) async {
    try {
      final newItems = await DashboardRepository().getPaginationList(pageKey);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + 5;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }
}