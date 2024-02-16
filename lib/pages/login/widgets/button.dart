import 'package:flutter/material.dart';
import 'package:flutter_ui_avanzado/utils/colors.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(
          
          textStyle: TextStyle(
            fontSize: 17,
            color: primary,
          ),
        backgroundColor: secondary,
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () {
            },
            child: Text(
              'LOGIN',
              style: TextStyle(
                color: primary,
                fontWeight: FontWeight.w800,
                letterSpacing: 1
              ),
            ),
          ),
        ],
      ),
    );
  }
}