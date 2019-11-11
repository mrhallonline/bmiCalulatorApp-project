import 'package:flutter/material.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const bottomContainerHeight = 40.0;
const bottomContainerColor = Color(0xFFEB1555);
const cardColor = Color(0xFF1D1E33);
const iconColor = Color(0xFF8D8E98);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableIconWidget(
                        icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableIconWidget(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}


