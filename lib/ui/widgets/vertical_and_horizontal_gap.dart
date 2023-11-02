// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class VerticalGap extends StatelessWidget {
  final double gap;
  const VerticalGap({this.gap = 10});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gap,
    );
  }
}

class HorizontalGap extends StatelessWidget {
  final double gap;
  const HorizontalGap({this.gap = 10});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gap,
    );
  }
}

Widget horizontalSpacing(double width) => SizedBox(
  width: width,
);
Widget verticalSpacing(double height) => SizedBox(
  height: height,
);

BoxDecoration myCustomDecoration =  const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter, // Gradient starts at the top center
    end: Alignment.bottomCenter, // Gradient ends at the bottom center
    colors: [
      Color(0xff140107),
      Color(0xff470f1a), // Start color
      Color(0xff010417), // End color
    ],
  ),
);

