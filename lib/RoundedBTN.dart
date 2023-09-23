import 'package:flutter/material.dart';

class RoundedBTN extends StatelessWidget {
  final IconData icon;
  final Function onpress;
  final Color color;
  RoundedBTN({required this.color, required this.icon, required this.onpress});

  get onPress => null;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size:15,  ),
      onPressed: onPress,
      elevation: 8,
      constraints: BoxConstraints.tightFor(height: 55,width: 55),
      shape:CircleBorder(),
      fillColor: color,


    );
  }
}