import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget myChild;
  final Function onpress;
  const ReusableCard({ required this.color ,required this.myChild, required this.onpress});

  get onPress => null;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            onTap : onPress,

            child:
            Container(
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10)  ),
              child: myChild,
            ),
          ),
        )
    );
  }
}