import 'package:flutter/material.dart';
import 'package:responsiveuiflutter/util/BaseStateWidget.dart';
import 'package:responsiveuiflutter/util/BaseStatefulWidget.dart';

class SignupScreen extends BaseStatefulWidget {
  @override
  State<StatefulWidget> get layoutRes => _SignupScreen();

}

class _SignupScreen extends BaseStateWidget<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: ()=>{
    popNavigation()
    }, child: const Text("Sign Up Page"));
  }
}