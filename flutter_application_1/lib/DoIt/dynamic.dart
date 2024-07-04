import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(const MyApp());
}

//정적
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Test"),
        ),
        body: MyWidget(),
      )
    );
  }
}

//동적
class MyWidget extends StatefulWidget{
  const MyWidget({super.key});

  @override
  State<StatefulWidget> createState(){
    return _MyWidgetState();
  }
}

//state
class _MyWidgetState extends State<MyWidget>{
  bool enabled = false;
  String stateText = "disable";

  void changeCheck(){
    setState((){
      if(enabled){
        stateText = "disable";
        enabled = false;
      }else{
        stateText = "enable";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: (enabled
            ? Icon( //true
              Icons.check_box,
              size: 20,
              )
              : Icon( // false
                Icons.check_box_outline_blank,
                size: 20,
              )
              ),
              color: Colors.red,
              onPressed: changeCheck,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              '$stateText',
              style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
