import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsiveuiflutter/util/BaseListWidget.dart';
import 'package:responsiveuiflutter/util/BaseStatefulWidget.dart';

class Receipt extends BaseStatefulWidget{
  @override
  State<StatefulWidget> get layoutRes => _ReceiptState();
}

class _ReceiptState extends BaseListWidget<Receipt>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Receipt")),
      body:  Text("Receipt"),
    );

  }
}