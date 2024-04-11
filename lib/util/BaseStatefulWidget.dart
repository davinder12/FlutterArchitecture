import 'package:flutter/material.dart';

abstract class BaseStatefulWidget <T extends StatefulWidget> extends StatefulWidget {

  State<T> get layoutRes;
  @override
  State<StatefulWidget> createState() {
    return layoutRes;
  }
}




