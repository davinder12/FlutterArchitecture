import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'BaseStateWidget.dart';

abstract class BaseListWidget<S extends StatefulWidget> extends BaseStateWidget<S> {

  paginationListView<R>(PagingController<int, R> pagingController,Widget Function(R) callBack,VoidCallback? callback){
    return PagedListView<int, R>.separated(
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate<R>(
        animateTransitions: true,
          noItemsFoundIndicatorBuilder: (_) {
            return ElevatedButton(onPressed: callback, child:  const Center(
              child: Text("No item Found"),
            ));
          },
          firstPageErrorIndicatorBuilder: (_) {
            return GestureDetector(
              onTap: callback,
              child: const Center(
                child: Text("Some Thing went wrong"),
              ),
            );
          },
        itemBuilder: (context, item, index) => callBack(item)
      ),
      separatorBuilder: (context, index) => Container(),
    );
  }

  ListView listView<T>(List<T> list,Axis direction, Widget Function(T) callBack) {
    return ListView.separated(
      scrollDirection: direction,
      itemBuilder: (context, index) {
        return Row(
          children: [callBack(list[index])],
        );
      },
      itemCount: list.length, // Assuming arrayName is defined somewhere
      separatorBuilder: (context, index) {
        return const Divider(
          height: 1,
          thickness: 1,
        );
      },
    );
  }
}
