import 'package:flutter/material.dart';

import 'package:web_input_type/widgets/material_input_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.grey,
          width: double.infinity,
          child: Center(
            child: Container(
              width: 200,
              child: MaterialTextField.number(
                textField: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(hintText: "Enter Your name"),
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
