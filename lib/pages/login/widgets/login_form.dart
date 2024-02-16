// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/button.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/input_text_login.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_avanzado/utils/colors.dart';
import 'package:logger/logger.dart';
//import 'package:flutter_ui_avanzado/utils/responsive.dart';
Logger logger = Logger();




/// Widget que representa el formulario de inicio de sesión.
class LoginForm extends StatelessWidget{
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context){
    
    //final Responsive responsive = Responsive.of(context);
    return  SafeArea(
      top:false,

      child: Container(
        decoration: BoxDecoration(
          
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: primary,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        alignment: Alignment.topCenter,
        
        //height: constraints.maxHeight / 10,
        //width: double.infinity,
        child: Column(
          children: const <Widget>[
            EmailTextField(),
            PassTextField(),
            ElevatedButtonExample(),
            TextButtonForgetPass(),
            RowCreateAccount(),
            Spacer(),
            AlignTerms(),
          ],
        ),
      ),
    );

  }
}

class AlignTerms extends StatelessWidget {
  const AlignTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        "By continuing, you agree to our Terms of Service and Privacy Policy",
        
        style: TextStyle(
          color: white,
          fontSize: 11,
          
        ),
      ),
    );
  }
}

class RowCreateAccount extends StatelessWidget {
  const RowCreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: <Widget> [
        Text("Don't have an account?", style: TextStyle(color: white, fontSize: 14), textAlign: TextAlign.end),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            //padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          ), 
          child: Text(
            "Create Account",
            style: TextStyle(
              color: secondary,
              fontWeight: FontWeight.w900,
              fontSize: 14
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}

class TextButtonForgetPass extends StatelessWidget {
  const TextButtonForgetPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        onPressed: () {}, 
        child: Text(
          "Forgot password?",
          style: TextStyle(
            color: secondary,
            fontWeight: FontWeight.bold,
            fontSize: 14
          ),
        ),
      ),
    );
  }
}

class PassTextField extends StatelessWidget {
  const PassTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(40, 20, 40, 40),
      child: InputTextLogin (
        inputType: TextInputType.text, 
        inputAction: TextInputAction.send,
        hintString : "Escribe tu contraseña", 
        labelString: "Contraseña", 
        iconTextField: Icon(Icons.lock),
        passObscure: true,
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
      
      child: InputTextLogin (
        inputType: TextInputType.emailAddress, 
        inputAction: TextInputAction.next,
        hintString : "Escribe tu correo electrónico", 
        labelString: "Correo", 
        iconTextField: Icon(Icons.alternate_email),
        passObscure: false,
      ),
    
    );
  }
}