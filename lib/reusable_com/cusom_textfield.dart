import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_Form extends StatelessWidget {
  Text_Form({ required this.label,required this.show_char,this.onchanged,this.input});
  String? label;
  bool show_char=false;
  TextInputType? input;
  Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
          keyboardType: input,
          onChanged: onchanged,
          obscureText:show_char ,
          obscuringCharacter: '*',
          decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(
                  color: Colors.grey
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: Colors.black
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: Colors.black
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  )
              )
          )
      );

  }
}