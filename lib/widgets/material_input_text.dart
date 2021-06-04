import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';

class MaterialTextField extends StatelessWidget {
  final TextField textField;
  late TextField randeredTextField;
  late TextEditingController? controller;

  MaterialTextField({required this.textField}) {
    this.randeredTextField = textField.clone();
    this.controller = this.randeredTextField.controller;
  }

  MaterialTextField.number({required this.textField}) {
    if (textField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = textField.controller;
    }
    this.randeredTextField = textField.clone(
        onChanged: numberValidation,
        controller: textField.controller == null
            ? this.controller
            : textField.controller);
  }

  @override
  Widget build(BuildContext context) {
    return randeredTextField;
  }

  numberValidation(String text) {
    var chars = text.characters;
    String textValue = "";
    chars.forEach((element) {
      if (element.toString().isDigit()) {
        textValue += element;
      }
    });
    text = textValue;
    if (text.isEmpty) {
      this.controller?.text = text;
    }
  }
}
