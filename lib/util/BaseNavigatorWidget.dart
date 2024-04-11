import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsiveuiflutter/screens/dashborad/Dashboard.dart';
import 'package:responsiveuiflutter/screens/loginScreen/LoginScreen.dart';
import 'package:responsiveuiflutter/screens/signUpScreen/SignupScreen.dart';

abstract class BaseNavigatorWidget<N extends StatefulWidget> extends State<N>{

  void signUpNavigation(BuildContext context) async {
    await Future.delayed(Duration.zero, () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen()));
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()),);
    });
  }

  void dashboardNavigation(BuildContext context)async {
    await Future.delayed(Duration.zero, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Dashboard()));
    });
  }

   void loginScreenNavigation(BuildContext context){
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => LoginScreen()));
   }

  void popNavigation(){
    Navigator.pop(context);
  }
  void systemPopUpNav(){
    if (Navigator.canPop(context)) {
        Navigator.pop(context);
    } else {
      SystemNavigator.pop();
    }
  }

}