import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


void showCustomSnackBar(BuildContext context,
    {required String message,
      Duration duration = const Duration(seconds: 2),
      String? actionLabel,
      VoidCallback? actionOnPressed}) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: duration,
    action: actionLabel != null
        ? SnackBarAction(
      label: actionLabel,
      onPressed: actionOnPressed ?? () {

      },
    )
        : null,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

// extension ThrottleClicks on Widget {
//   Stream<void> throttleClicks({int milliseconds = 300}) {
//         return  throttleTime(Duration(milliseconds: milliseconds))
//         .map((_) => null);
//      // Map to void
//   }
// }

