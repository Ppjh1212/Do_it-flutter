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
          title: const Text('Stateless Test'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: (enabled
                      ? const Icon(
                          Icons.check_box,
                          size: 20,
                        )
                      : const Icon(
                          Icons.check_box_outline_blank,
                          size: 20,
                        )),
                  color: Colors.red,
                  onPressed: changeCheck,
                  ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "$stateText", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), 
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
