import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:week10/IconWithLabel.dart';
import 'package:week10/ReusableCard.dart';
import 'package:week10/RoundedBTN.dart';
import 'package:flutter/material.dart';
import 'package:week10/home.dart';

class ResultScreen extends StatefulWidget{
  final String bmi;
  final String result;
  final String feedback;
  ResultScreen ({required this.bmi, required this.result,required this.feedback}) ;
  @override
  _ResultScreenState createState()=> _ResultScreenState();
}
class _ResultScreenState extends State<ResultScreen>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              child: Text(' YOUR RESULT ',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
          ReusableCard(
              color: Color(0xff1d1e33),
              myChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(widget.bmi,
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),),
                  ),
                  Text(widget.result,
                          style: TextStyle(fontSize: 50,
                         fontWeight: FontWeight.bold, ),),
                  Text(widget.feedback,
                    style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold, ),),
                ],//children
              ),
            onpress: (){

            },)
        ],
      ),
    );

  }
}
