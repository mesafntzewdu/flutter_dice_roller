import 'package:dice_roller/dice_roller.dart';
import 'package:dice_roller/styled_text.dart';
import 'package:flutter/material.dart';

const startValue = Alignment.center; //const is compile time
//final is run time
const endValue = Alignment.bottomCenter;

class GradinetContainer extends StatelessWidget {
  final List<Color> colors;
  const GradinetContainer(this.colors, {super.key});
  GradinetContainer.purple({super.key})
      : colors = <Color>[
          Color(0xff1f005c),
          Color(0xff5b0060),
          Color(0xff870160),
          Color(0xffac255e),
          Color(0xffca485c),
          Color(0xffe16b5c),
          Color(0xfff39060),
          Colors.black,
        ];
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          //shape: BoxShape.circle,
          gradient: LinearGradient(
        colors: colors,
        begin: startValue,
        end: endValue,
      )),
      child: const DiceRoller(),
    );
  }
}
