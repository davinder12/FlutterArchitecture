import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsiveuiflutter/model/services/SharedPreferencesClass.dart';
import 'package:responsiveuiflutter/util/BaseStateWidget.dart';
import 'package:responsiveuiflutter/util/BaseStatefulWidget.dart';

class SplashScreen extends BaseStatefulWidget {
  @override
  State<StatefulWidget> get layoutRes => _SplashScreen();
}

class _SplashScreen extends BaseStateWidget<SplashScreen> {
  SharedPreferencesClass?  preferenceService = SharedPreferencesClass();
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer =   Timer(const Duration(seconds: 3), ()  {
      if(preferenceService?.getString(SharedPreferencesClass.Id)?.isNotEmpty == true){
        dashboardNavigation(context);
      }else{
        loginScreenNavigation(context);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         color: Colors.green,
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child:  const Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text("Splash Screen"),
           ],
         ),
      ),
    );
  }


}