import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_avanzado/utils/colors.dart';
import 'package:flutter_ui_avanzado/utils/responsive.dart';
//import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {

    final Responsive responsive = Responsive.of(context);

    return AspectRatio(
      aspectRatio: 16 / 11,
      child: LayoutBuilder(builder: (_, constraints) {
          return Container(
            color: third,
            child: Stack(
              children: <Widget>[
                Positioned(     // Add 1 line and the text welcome back!
                  top: constraints.maxHeight * 0.61,
                  child: Column(
                    children: <Widget>[
                      Container(    // Add 1 line 
                        height: 3,
                        width: constraints.maxWidth,
                        color: const Color(0xFFE8D8C4),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(   // Add the txt welcome back!
                          
                          "Welcome Back!",
                          textAlign: TextAlign.center,
                          
                          style: TextStyle(
                            fontSize: responsive.inchPercent(1250),
                            fontWeight: FontWeight.bold,
                            color: white,
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(     //Add svg manPalette
                  top: constraints.maxHeight * 0.26,
                  left: constraints.maxWidth * 0.03,
                  child: SvgPicture.asset(
                    "assets/pages/login/manPalette.svg",
                  width: constraints.maxWidth * 0.30,
                  ),
                ),
                Positioned(     //Add svg woman
                  top: constraints.maxHeight * 0.29,
                  right: constraints.maxWidth * 0.003,
                  child: SvgPicture.asset(
                    "assets/pages/login/woman.svg",
                  width: constraints.maxWidth * 0.26,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
