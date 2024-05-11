import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/infrastructure/constant.dart';
import 'package:bmi_calculator/infrastructure/main_app.dart';
import 'package:flutter/material.dart';

class ResultPageScreeen extends StatelessWidget {
  const ResultPageScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      MainApp.bmiResult,
                      style: kResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      MainApp.bmiValue.toStringAsFixed(2),
                      style: kBMITextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      MainApp.bmiDesc,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: CalculateButton(
                title: 'RE-CALCULATE',
                onPress: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ));
  }
}
