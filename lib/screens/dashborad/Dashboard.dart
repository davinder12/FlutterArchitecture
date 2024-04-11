import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsiveuiflutter/screens/dashborad/FoodList/FoodListData.dart';
import 'package:responsiveuiflutter/screens/dashborad/Receipt/Reciept.dart';
import 'package:responsiveuiflutter/screens/dashborad/Setting/Setting.dart';
import 'package:responsiveuiflutter/util/BaseStateWidget.dart';
import 'package:responsiveuiflutter/util/BaseStatefulWidget.dart';
import 'package:responsiveuiflutter/screens/dashborad/Map/Map.dart';

class Dashboard extends BaseStatefulWidget{
  @override
  State<StatefulWidget> get layoutRes => _DashboardState();
}

class _DashboardState extends BaseStateWidget<Dashboard>{
  int _selectedBottomNavigationIndex = 0;

  final List<_BottomNavigationItem> _bottomNavigationItems = [
    _BottomNavigationItem(
      label: 'Food List',
      iconData: Icons.refresh,
      widgetBuilder: (context) => FoodListData(),
    ),
    _BottomNavigationItem(
      label: 'Map',
      iconData: Icons.search,
      widgetBuilder: (context) => Map(),
    ),
    _BottomNavigationItem(
      label: 'Receipt',
      iconData: Icons.grid_on,
      widgetBuilder: (context) => Receipt(),
    ),
    _BottomNavigationItem(
      label: 'Setting',
      iconData: Icons.view_quilt,
      widgetBuilder: (context) => Setting(),
    )
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedBottomNavigationIndex,
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationItems.map((item) => BottomNavigationBarItem(
            icon: Icon(item.iconData),
            label: item.label,
          ),
        ).toList(),
        onTap: (newIndex) => setState(
              () => _selectedBottomNavigationIndex = newIndex,
        ),
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationIndex,
        children: _bottomNavigationItems
            .map((item) => item.widgetBuilder(context))
            .toList(),
      ),
    );
  }
}

class _BottomNavigationItem {
  const _BottomNavigationItem({
    required this.label,
    required this.iconData,
    required this.widgetBuilder,
  });

  final String label;
  final IconData iconData;
  final WidgetBuilder widgetBuilder;
}