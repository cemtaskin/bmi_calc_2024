import 'package:bmi_calculator/components/gender_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/stepper_input.dart';
import 'package:bmi_calculator/infrastructure/constant.dart';
import 'package:bmi_calculator/infrastructure/enums.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPageScreen extends StatefulWidget {
  const InputPageScreen({super.key});

  @override
  State<InputPageScreen> createState() => _InputPageScreenState();
}

class _InputPageScreenState extends State<InputPageScreen> {
  Gender selectedGender = Gender.unselected;
  var height = 90.0;
  var weight = 60;
  var age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GenderButton(
                          isActive: selectedGender == Gender.male,
                          label: 'MALE',
                          iconData: FontAwesomeIcons.mars,
                          onPress: () {
                            selectedGender = Gender.male;
                            setState(() {});
                          },
                        ),
                      ),
                      Expanded(
                        child: GenderButton(
                          isActive: selectedGender == Gender.female,
                          label: 'FEMALE',
                          iconData: FontAwesomeIcons.venus,
                          onPress: () {
                            selectedGender = Gender.female;
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style:
                              TextStyle(color: kLabelTextColor, fontSize: 18.0),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              height.toStringAsFixed(0),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbColor: Color(0xFFEB1555),
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30.0,
                            ),
                          ),
                          child: Slider(
                            value: height,
                            min: 90,
                            max: 210,
                            onChanged: (value) {
                              height = value;
                              print(value);
                              setState(() {});
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: StepperInput(
                          label: 'WEIGHT',
                          value: '$weight kg',
                          onMinusPressed: () {
                            weight--;
                            setState(() {});
                          },
                          onPlusPressed: () {
                            weight++;
                            setState(() {});
                          },
                        ),
                      ),
                      Expanded(
                        child: StepperInput(
                          label: 'AGE',
                          value: '$age',
                          onMinusPressed: () {
                            age--;
                            setState(() {});
                          },
                          onPlusPressed: () {
                            age++;
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
