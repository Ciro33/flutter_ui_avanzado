import 'package:flutter/material.dart';
import 'package:flutter_ui_avanzado/utils/colors.dart';


class InputTextLogin extends StatelessWidget{

  final TextInputType inputType;
  final TextInputAction inputAction;
  final String hintString;
  final String labelString;
  final Icon iconTextField;
  final bool passObscure;

  const InputTextLogin({Key? key, required this.inputType, required this.inputAction, required this.iconTextField, required this.hintString, required this.labelString, required this.passObscure}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TextField(
      obscureText: passObscure,
      keyboardType: inputType,
      textInputAction: inputAction,

      style: TextStyle(
        color: white,
        fontWeight:FontWeight.bold
      ),

    
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius:  const BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(
            width: 20,
            style: BorderStyle.solid,
            color: third,
          ),
          
        ),
        
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: third),
          borderRadius:  const BorderRadius.all(Radius.circular(40)),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: third),
          borderRadius:  const BorderRadius.all(Radius.circular(40)),
        ),
        
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius:  const BorderRadius.all(Radius.circular(40)),
        ),

        hintText: hintString,
        
        hintStyle: TextStyle(
          color: fourthy,
          fontWeight:FontWeight.bold
        ),

        labelText: labelString,


        labelStyle: TextStyle(
          color: fourthy,
          fontWeight:FontWeight.bold
        ),

        prefixIcon: iconTextField,
        prefixIconColor: white,
        filled: true,
        contentPadding: const EdgeInsets.all(16),
        fillColor: third,
        
      ),
      
    );
  }
}