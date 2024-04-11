import 'package:flutter/material.dart';


class SocialMediaButton extends StatelessWidget {
  final VoidCallback? callback;

  const SocialMediaButton({this.callback});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10),
      child: ElevatedButton(onPressed: ()=>{
        callback!()
      },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 5, // elevation
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // rounded corners
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5), // button padding
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Center(child: Text("Login with facebook"))),
            ],
          )),
    );
  }
}