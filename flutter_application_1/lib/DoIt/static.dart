import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool enabled = false;
  String stateText = "disable";

  MyApp({super.key});

  void changeCheck() {
    if (enabled) {
      stateText = "disable";
      enabled = false;
    } else {
      stateText = "enable";
      enabled = true;
    }
  }
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
          
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text("Stateless Test", style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: (enabled
                    ? Icon( // enabled = true면 실행
                        Icons.check_box,
                        size: 20,
                      )
                    : Icon( // enabled = false면 실행
                        Icons.check_box_outline_blank,
                        size: 20,
                      )),
                color: Colors.red,
                onPressed: changeCheck,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  stateText,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}