import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  Button({this.ontap,this.text_button});
  String? text_button;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:ontap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Center(
          child: Text(
            '$text_button',
            style: const TextStyle(
                color:Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
