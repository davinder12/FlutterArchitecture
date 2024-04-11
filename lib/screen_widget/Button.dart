import 'package:flutter/material.dart';

class Button extends StatelessWidget {
    String buttonText ='';
    final VoidCallback? callback;
    Button({required this.buttonText, this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(onPressed: ()=>{
        callback!()
      },
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          elevation: 5, // elevation
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // rounded corners
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5), // button padding
        ),
      ),
    );
  }

}