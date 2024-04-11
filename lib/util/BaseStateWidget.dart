import 'package:flutter/material.dart';
import '../model/api/api_response.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'BaseNavigatorWidget.dart';

abstract class BaseStateWidget<T extends StatefulWidget> extends BaseNavigatorWidget<T> {

  Widget loadingWidget<D>(ApiResponse apiResponse, Function(D) callback) {
    switch (apiResponse.status) {
      case Status.LOADING:
        return loaderWidget(true,apiResponse.message);
      case Status.COMPLETED:
        callback(apiResponse.data);
        return loaderWidget(false,apiResponse.message);
      case Status.ERROR:
        callback(apiResponse.data);
        return loaderWidget(false,apiResponse.message);
      default:
        return loaderWidget(false,apiResponse.message);
    }
  }

  void showToast(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  void showCustomSnackBar(
      {required String message, Duration duration = const Duration(seconds: 2),
        String? actionLabel,
        VoidCallback? actionOnPressed})
  {
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

  Widget loaderWidget(bool status,String? message){
    return Visibility(
      visible: status,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.3),
          border: Border.all(
              width: 1.0,
              color: Colors.black
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10) ,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                    width: 1.0,
                    color: Colors.black
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const CircularProgressIndicator(color: Colors.white),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(message??"Loading Please wait...",
                        style: const TextStyle(color: Colors.white, fontSize: 10,
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}

