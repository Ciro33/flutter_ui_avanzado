// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_avanzado/pages/login/widgets/login_form.dart';
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
    final Responsive responsive = Responsive.of(context);
    return  Scaffold(
      backgroundColor: third,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const[
            Welcome(),
            Expanded(child: LoginForm()),
          ]
        ),
      )
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