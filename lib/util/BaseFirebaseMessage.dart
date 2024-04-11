import  'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:responsiveuiflutter/util/BaseStateWidget.dart';

abstract class BaseFirebaseMessage<S extends StatefulWidget> extends BaseStateWidget<S>  {

  final _firebaseMessaging = FirebaseMessaging.instance;

  @pragma('vm:entry-point')
  Future<void> handleBackgroundMessage(RemoteMessage? message) async {
  print('Title: ${message?.notification?.title}');
  print('Body: ${message?.notification?.body}');
  print('Payload: ${message?.data}');
  showToast("background");
  }

   Future<void> initNotfication() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print("Token are =>$fCMToken<====");
  }

  Future<void> getDataFromFirebase() async {
    initNotfication();
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      showToast("Tap");
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showToast("Listening message");
    });
  }

}

