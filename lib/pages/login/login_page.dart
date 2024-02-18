// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/button.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/input_text_login.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/welcome.dart';
import 'package:flutter_ui_avanzado/utils/colors.dart';
import 'package:flutter_ui_avanzado/utils/responsive.dart';
import 'package:logger/logger.dart';



Logger logger = Logger();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

    @override
    void initState() {
      super.initState();
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    }
  

  @override
  Widget build(BuildContext context) {

    //final LoginForm loginForm = LoginForm();

    final Responsive responsive = Responsive.of(context);
        return Scaffold(
        backgroundColor: primary,
        body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Welcome(),
              Container(
                
                decoration: BoxDecoration(
                  color: third, // Cambia esto al color que desees
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    ),
                  ], // Cambia esto al radio que desees
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Email(),
                    PassTextField(),
                    ElevatedButtonExample(),
                    TextButtonForgetPass(),
                    RowCreateAccount(),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook,size: 48,color: white,),
                      const SizedBox(width: 20),
                      Icon(Icons.android,size: 48,color: white,),
                      const SizedBox(width: 20),
                      Icon(Icons.apple,size: 48,color: white,),
                    ],
                  ),
                    SizedBox(height: responsive.height * 0.096),
                    AlignTerms(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  const Email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    /* return  Scaffold(
      backgroundColor: third,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          height: responsive.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const[
              Welcome(),
              Expanded(child: LoginForm()
              ),
            ]
          ),
        ),
      )
    );  */

    class AlignTerms extends StatelessWidget {
  const AlignTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          "By continuing, you agree to our Terms of Service and Privacy Policy",
          
          style: TextStyle(
            color: white,
            fontSize: 11,
            
          ),
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

