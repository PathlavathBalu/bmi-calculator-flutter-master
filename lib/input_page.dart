import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
   
   Gender selectedGender;

  // Color maleCardColor = inactiveCardColour;
  // Color femaleCardColor = inactiveCardColour;

  // //1=male 2=female
  // void updateColour(Gender selectedGender) {
  //   //male card pressed
  //   if(selectedGender == Gender.male) {
  //     if(maleCardColor == inactiveCardColour) {
  //       maleCardColor = activeCardColour;
  //       femaleCardColor = inactiveCardColour;
  //     } else {
  //       maleCardColor = inactiveCardColour;
  //     }
  //   }
  
  // // female card pressed
  // if(selectedGender == Gender.female) {
  //   if(femaleCardColor == inactiveCardColour) {
  //     femaleCardColor = activeCardColour;
  //     maleCardColor = inactiveCardColour;
  //   } else {
  //     femaleCardColor = inactiveCardColour;
  //   }
  // }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                     setState(() {
                      selectedGender = Gender.male;
                     });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                     setState(() {
                      selectedGender = Gender.female;
                     });
                    },
                    child: ReusableCard(
                      //colour: femaleCardColor,
                      colour: selectedGender == Gender.female ? activeCardColour : inactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
