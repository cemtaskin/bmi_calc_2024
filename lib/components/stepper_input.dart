import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/rounded_button.dart';
import 'package:bmi_calculator/infrastructure/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StepperInput extends StatelessWidget {
  final String? label;
  final String? value;
  final VoidCallback? onPlusPressed;
  final VoidCallback? onMinusPressed;

  const StepperInput({
    super.key,
    this.label,
    this.value,
    this.onMinusPressed,
    this.onPlusPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: kActiveColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label!,
            style: TextStyle(
              fontSize: 18.0,
              color: kLabelTextColor,
            ),
          ),
          Text(
            value!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedButton(
                iconData: FontAwesomeIcons.minus,
                onPress: onMinusPressed,
              ),
              RoundedButton(
                iconData: FontAwesomeIcons.plus,
                onPress: onPlusPressed,
              )
            ],
          )
        ],
      ),
    );
  }
}
