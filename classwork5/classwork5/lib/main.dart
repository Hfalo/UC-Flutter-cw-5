import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var num1 = 1;
  var num2 = 1;
  var num3 = 1;

  void PlayButton() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;
    num3 = Random().nextInt(3) + 1;
    

    setState(() {});

  }
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        //backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Center(child: Text("Rock Paper Scissors")),
          backgroundColor: Colors.blueAccent[100],
        ),
        body: 
        
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blueAccent,
                Colors.white,
              ],
            )
        ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Container(padding: EdgeInsets.all(10), child: Image.asset("assets/images/images/i_$num1.png", width:120, height: 120,)),
                      Container(padding: EdgeInsets.all(10), child: Image.asset("assets/images/images/i_$num2.png", width:120, height: 120,)),                                ],
                ),

                Container(
                  height: 80,
                ),

                Container(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      PlayButton();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent[100],
                    ),
                    child: Text(
                      "Play"
                    ),
                  ),
                ),              
              ],
            ),
          ),
        ),
      )
    );
  }
}
