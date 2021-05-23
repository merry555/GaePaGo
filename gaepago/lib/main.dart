import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}
//row 띄어쓰고싶을때 SizedBox(width:10)
class Card extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child: Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.center,
                    width: 250,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26.withOpacity(0.5),
                          blurRadius: 4,
                          offset: Offset(2,5),
                        ),
                      ],
                      color: Colors.blueAccent,
                      ),
                    child: Text('애미야, 나 배고프니까 간식 좀 가져와봐',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.gaegu(
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: Colors.white,
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  width: 180,
                  height: 50,
                  padding: EdgeInsets.only(top:9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(bottom:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '김댕댕',
                        style: GoogleFonts.gaegu(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                          child: Icon(Icons.edit)),
                    ],
                  ),
                  ),
                ),
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey,
                child:
                  Text('+',
                  style: GoogleFonts.gaegu(
                    fontSize: 80,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,),
                ),
              Container(
                margin: EdgeInsets.only(top: 120),
                child: Text('녹음버튼을 꾹 눌러주세요',
                style: GoogleFonts.gaegu(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top:30),
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(2,5),
                    ),
                  ],
                ),
                child: Icon(Icons.mic_none_rounded,
                size: 50,
                color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Container(
                    child: Text('GaePago',
                    style: GoogleFonts.comfortaa(
                      fontWeight: FontWeight.w900,
                      fontSize: 68,
                      color: Colors.blueAccent,
                    ),),
                  ),),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top:20),
                    child: Text('Dog to Human Translator',
                    style: GoogleFonts.comfortaa(
                      fontWeight:  FontWeight.normal,
                      fontSize: 24,
                      color: Colors.grey,
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}