import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:week10/IconWithLabel.dart';
import 'package:week10/ReusableCard.dart';
import 'package:week10/RoundedBTN.dart';
import 'package:week10/result.dart';
import 'package:week10/calculatorBMI.dart';


class Home extends StatefulWidget{
  @override
  _HomeState createState() {   return _HomeState();  }
}
class _HomeState extends State<Home> {
  int _height = 150;
  int _weight = 150;
  int _age = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0a0321),
        title: Text(' BMI CALCULATOR '),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
                  children: [
                     ReusableCard(
                       color: Color(0xff1d1e33),
                       myChild: IconWithLabel(
                         icon:FontAwesomeIcons.mars,
                         label: 'Male',
                       ),
                       onpress: (){
                       },
                     ),

                     ReusableCard(
                       color:Color(0xff1d1e33),
                       myChild: IconWithLabel(
                         icon:FontAwesomeIcons.venus,
                         label: 'Female',
                       ),
                       onpress: (){

                       },
                     ),
                  ],
                ),
            ),

            ReusableCard(
              color:Color(0xff1d1e33),
              myChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Container(child:Text('HEIGHT',
                    style: TextStyle(fontSize:20,),) ,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                    child: Text(
                      _height.toString(),
                      style:TextStyle(fontSize:45,fontWeight:FontWeight.bold,),),),

                    Container(
                      child: Text(' cm '),),
                  ],
                  ),

                  Container(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 2,
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x15eb1555),
                        thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius:15),
                        overlayShape:
                         RoundSliderOverlayShape(overlayRadius: 30) ,
                      ),
                      child: Slider(
                      max:220,
                      min:120,
                      onChanged:(double newValue){
                        setState(() {
                          _height = newValue.toInt().round();
                        });
                      },
                      value: _height.toDouble(),
                    ),),
                  )
                ],
              ),
              onpress: (){

              },
            ),

            Expanded(
              child: Row(
                children: [
                ReusableCard(
                  color:Color(0xff1d1e33),
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('WEIGHT'),
                      ),

                      Container(
                        child: Text(
                          _weight.toString(),
                          style: TextStyle(
                            fontSize: 50,fontWeight: FontWeight.bold ), ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedBTN(
                              color: Color(0xff0A0E21),
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                  _weight++;
                                });
                              }
                          ),

                          SizedBox(width: 5,),

                          RoundedBTN(
                              color: Color(0xff0A0E21),
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                setState(() {
                                  _weight--;
                                });
                              }
                          ),
                        ],
                      ),
                    ],
                  ),
                  onpress: (){

                  },
                ),

                ReusableCard(
                  color:Color(0xff1d1e33),
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('AGE'),
                      ),

                      Container(
                        child: Text(
                          _age.toString(),
                          style: TextStyle(
                              fontSize: 50,fontWeight: FontWeight.bold ), ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedBTN(
                              color: Color(0xff0A0E21),
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                _age++;
                              });}
                          ),

                          SizedBox(width: 5,),

                          RoundedBTN(
                              color: Color(0xff0A0E21),
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                setState(() {
                                  _age--;
                                });
                              }
                          ),
                        ],
                      ),
                    ],
                  ),
                  onpress: (){

                  },
                ),

                ],
              ),
            ),

            ElevatedButton(
                onPressed:(){
                  CalculateBMI calculateBMI = CalculateBMI(
                    height: _height, weight: _weight
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=> ResultScreen(
                    bmi: calculateBMI.calculateBMI(),
                    result: calculateBMI.getResult(),
                    feedback:calculateBMI.feedback(),
                  )));
                },
                child: Text('CALCULATE!'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).accentColor,
                minimumSize: Size(double.infinity,50)     ),
            )
          ],
        ),
      ),
    );
  }
}

