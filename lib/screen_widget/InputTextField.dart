import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InputTextField extends StatefulWidget{

  final String hint;
  final Function(String)? callback;
  final double  marginTop;


  InputTextField({required this.hint, this.callback,this.marginTop = 0});

  @override
  State<StatefulWidget> createState() {
     return _InputTextField();
  }
}
class _InputTextField extends State<InputTextField>{


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: widget.marginTop),
      child: TextField(
        style: const TextStyle(color: Colors.black, fontSize:14),
        keyboardType: TextInputType.name,
        onChanged: (value) {
          if (widget.callback != null) {
            widget.callback!(value);
          }
        },
        decoration: InputDecoration(
          hintText:  widget.hint,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            border: OutlineInputBorder(),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   borderSide: BorderSide(color: Colors.black),
          // ),
          //  focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   borderSide: const BorderSide(color: Colors.black),
          // ),
        ),
      ),
    );
  }

}
