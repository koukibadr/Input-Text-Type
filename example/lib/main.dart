import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_input_type/widgets/cupertino_text_type.dart';
import 'package:web_input_type/widgets/material_text_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Type Package',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MaterialFormExample(),
      ),
    );
  }
}

class MaterialFormExample extends StatelessWidget {
  const MaterialFormExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            child: MaterialTextType(
                textField: TextField(
              decoration: InputDecoration(hintText: "Name & lastname"),
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: MaterialTextType(
                textField: TextField(
              decoration: InputDecoration(hintText: "Adress"),
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: MaterialTextType.integer(
                textField: TextField(
              decoration: InputDecoration(hintText: "Age"),
              onChanged: (value) {
                print(value);
              },
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: MaterialTextType.datetime(
                textField: TextField(
              decoration: InputDecoration(hintText: "Birthday"),
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: MaterialTextType.phone(
                textField: TextField(
              decoration: InputDecoration(hintText: "Phone number"),
            )),
          ),
        ],
      ),
    );
  }
}

class CupertinoFormExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            child: CupertinoTextType(
                cupertinoTextField: CupertinoTextField(
              placeholder: "Product Name",
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: CupertinoTextType.number(
                cupertinoTextField: CupertinoTextField(
              placeholder: "Product Price",
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: CupertinoTextType.datetime(
                cupertinoTextField: CupertinoTextField(
              placeholder: "Product Date",
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: CupertinoTextType.phone(
                cupertinoTextField: CupertinoTextField(
              placeholder: "Phone number",
            )),
          ),
        ],
      ),
    );
  }
}
