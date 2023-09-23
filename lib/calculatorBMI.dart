import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:week10/IconWithLabel.dart';
import 'package:week10/ReusableCard.dart';
import 'package:week10/RoundedBTN.dart';
import 'package:flutter/material.dart';
import 'package:week10/home.dart';

class calculateBMI {
  late final int height;
  late final int weight;
  CalculateBMI({this.height,  this.weight}) async {
    throw UnimplementedError();
  }
  late double _bmi;

  Future<String> CalculateBMI() async {
     _bmi = weight / pow(height /100,2);
     return _bmi.toString();
  }
  Future<String> getResult() async {
    if(_bmi>=80){print('Overweight');}
    else if (_bmi >60){print('Normal');}
    else {print('Underweight');}
  }
  Future<String> feedback() async {
    if(_bmi>=80){print(
        'You have a higher thn normal .\n try to exersice more');}
    else if (_bmi >60){print(
        'You have a normal body weight. greatjob!');}
    else {print(
        'Eat more please .\n you are underweight ');}
  }

  c