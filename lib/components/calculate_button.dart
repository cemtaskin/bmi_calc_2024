import 'package:bmi_calculator/infrastructure/constant.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPress;
  const CalculateButton({super.key, this.onPress, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          title!,
          style: kCalculateButtonTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
