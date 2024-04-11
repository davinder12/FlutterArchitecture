import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsiveuiflutter/util/BaseListWidget.dart';
import 'package:responsiveuiflutter/util/BaseStatefulWidget.dart';

class Setting extends BaseStatefulWidget{
  @override
  State<StatefulWidget> get layoutRes => _SettingState();
}

class _SettingState extends BaseListWidget<Setting>{
  var arrayName = ['first','second','third','forth','five','six','seven','eight'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Setting")),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Ensure children expand width-wise
        children: [
          Expanded(
              child: Container(
                child: listView<String>(arrayName,Axis.vertical,(String item) {
                  return loginScreenAdapter(item,context,(value)=>{
                    showToast(value)
                  });
                }),
              )
          )
        ],
      ),
    );
  }
}
Widget loginScreenAdapter(var data, BuildContext context, Function(String) callBack) {
  // Call the function passed as an argument
  return GestureDetector(
    onTap: () {
     callBack(data);
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Text(
        data, style: const TextStyle(fontFamily: "FontMain",color: Colors.black),
      ),
    ),
  );
}