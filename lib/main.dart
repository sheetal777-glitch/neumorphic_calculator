import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    ),
  );
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Color myColor = Color(0xFFEAF0F1);
  Color black = Colors.black;
  Color purple = Color(0xff5A5CF5);
  Widget _buildButton(String buttonText, Color textColor,) {
    return Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: ClayContainer(
                    height: 60,
                    width: 60,
                    color: myColor,
                    borderRadius: 50,
                    spread: 4,
                    curveType: CurveType.concave,
                    child: MaterialButton(
                      child: Text(buttonText,style: TextStyle(
                        fontSize: 21,
                        color: textColor,
                      ),),
                      onPressed: () {}),
                  ),
                ),
                  );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: myColor,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Card(
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xfff1f4fa),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white70,
                    child: Container(
                      height: 110,
                      
                    ),
                  ),
                  

                  Positioned(
                    right: 30,
                    bottom: 50,
                    child: Text('69 + 65',style: TextStyle(
                      fontSize: 40
                    ),),
                  ),

                  Positioned(
                    right: 30,
                    bottom: 10,
                    child: Text('134', style: TextStyle(
                            fontSize: 30,
                            color: purple,
                          ),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        _buildButton("AC", purple, ), 
                        _buildButton('7', black,),
                        _buildButton('4', black,),
                        _buildButton('1', black,),
                        _buildButton('%', black),

                      ],
                    ),

                     Column(
                      children: [
                        _buildButton('/', purple,),    
                        _buildButton('8', black,),
                        _buildButton('5', black,),
                        _buildButton('2', black,),
                        _buildButton('0', black,),

                      ],
                    ),

                     Column(
                      children: [
                        _buildButton('X', purple,),    
                        _buildButton('9', black,),
                        _buildButton('6', black,),
                        _buildButton('3', black,),
                        _buildButton(',', black,),

                      ],
                    ),

                     Column(
                      children: [
                        _buildButton('xx', purple,),    
                        _buildButton('—', purple,),
                        _buildButton('+', purple,),

                        Expanded(
                          child: Container(
                  margin: EdgeInsets.all(10),
                  child: Expanded(
                    child: ClayContainer(
                      height: 60,
                      width: 60,
                      color: purple,
                      borderRadius: 50,
                      spread: 0.4,
                      curveType: CurveType.convex,
                      child: MaterialButton(
                          child: Text('=',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                          onPressed: () {}),
                    ),
                  ),
                    ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
