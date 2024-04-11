import 'package:flutter/material.dart';
import 'package:responsiveuiflutter/screens/SplashScreen.dart';
import 'package:responsiveuiflutter/screens/dashborad/Dashboard.dart';
import 'package:responsiveuiflutter/screens/dashborad/FoodList/FoodListModel.dart';
import 'package:provider/provider.dart';
import 'package:responsiveuiflutter/screens/loginScreen/LoginScreen.dart';
import 'package:responsiveuiflutter/screens/loginScreen/LoginScreenModel.dart';
import  'package:firebase_messaging/firebase_messaging.dart';
import 'package:responsiveuiflutter/util/BaseFirebaseMessage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';


// @pragma('vm:entry-point')
// Future<void> handleBackgroundMessage(RemoteMessage? message) async {
//   print('Title: ${message?.notification?.title}');
//   print('Body: ${message?.notification?.body}');
//   print('Payload: ${message?.data}');
//   Fluttertoast.showToast(
//       msg: "sdfsdfs",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.CENTER,
//       timeInSecForIosWeb: 1,
//       textColor: Colors.white,
//       fontSize: 16.0
//   );
// }

 main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options: const FirebaseOptions(
       apiKey: 'AIzaSyAAQPyXF3feUGsgPIL_aMMB2uqVGXVIumQ',
       appId: '1:235436311667:android:2f11f6e5940ba74081d606',
       messagingSenderId: '235436311667',
       projectId: 'responisve-ui-design',
       storageBucket: 'responisve-ui-design.appspot.com'));
   //FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: const TextTheme(
            displayMedium: TextStyle(fontSize: 10,
                backgroundColor: Colors.blue)
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends BaseFirebaseMessage<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: LoginScreenModel()),
          ChangeNotifierProvider.value(value: FoodListModel()),
        //   Provider<LoginScreenModel>(create: (_) => LoginScreenModel()),
        //   Provider<FoodListModel>(create: (_) => FoodListModel()),
        ],
      child: Scaffold(
        body: MaterialApp(
          home: FutureBuilder(
            future: getDataFromFirebase(),
            builder: (context, snapshot)
            {
              // Check for errors
              if (snapshot.hasError) {
                return Text('Error initializing Firebase${snapshot.error}');
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return SplashScreen();
              }
              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        )
      )
    );
  }
}


