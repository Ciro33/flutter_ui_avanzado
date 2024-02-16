import 'package:flutter/widgets.dart';

class Responsive {
  final double width, height, inch;

  Responsive({
    required this.width,
    required this.height,
    required this.inch,
  });
  
  static Responsive of(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final size = data.size;
    final inch = (size.shortestSide / 160).floorToDouble();

    return Responsive(
      width: size.width,
      height: size.height,
      inch: inch,
    );
  }

  double widthPercent(double percent) {
    return width * percent / 100;
  }
  
  double heightPercent(double percent) {
    return height * percent / 100;
  }

  double inchPercent(double percent) {
    return inch * percent / 100;
  }
  
}
