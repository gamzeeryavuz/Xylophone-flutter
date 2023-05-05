import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';





void main() => runApp
  (
    XylophoneApp()

);


class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){

    final player=AudioCache();
    player.play("note$soundNumber.wav");
  }
  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child:FloatingActionButton(
        backgroundColor:color,
          onPressed: (){
          playSound(1);

          },

    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:Center(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
                buildKey(color:Colors.blue,soundNumber:1),
                buildKey(color:Colors.deepPurple,soundNumber:2 ),
                buildKey(color:Colors.orange,soundNumber:3),
                buildKey(color:Colors.lightBlue,soundNumber:4),
                buildKey(color:Colors.teal,soundNumber:5),
                buildKey(color:Colors.amberAccent,soundNumber:6),
                buildKey(color:Colors.deepOrangeAccent,soundNumber: 7),



              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
