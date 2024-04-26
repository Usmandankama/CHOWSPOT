import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class TestContainer2 extends StatelessWidget {
  const TestContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 400,
          decoration: BoxDecoration(
            color: colors.complementaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
