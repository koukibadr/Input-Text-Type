import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';
import 'package:web_input_type/validators/validators_constants.dart';

// ignore: must_be_immutable
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

  MaterialTextField.integer({required this.textField}) {
    if (textField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = textField.controller;
    }
    this.randeredTextField = textField.clone(
        onChanged: integerValidation,
        controller: textField.controller == null
            ? this.controller
            : textField.controller);
  }

  MaterialTextField.datetime({required this.textField}) {
    if (textField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = textField.controller;
    }
    this.randeredTextField = textField.clone(
        onChanged: dateValidation,
        controller: textField.controller == null
            ? this.controller
            : textField.controller);
  }

  @override
  Widget build(BuildContext context) {
    return randeredTextField;
  }

  numberValidation(String text) {
    String textValue = text.characters.where((element) {
      return (element.toString().isDigit() ||
          DIGIT_SPECIAL_CHARACTERS.contains(element));
    }).toString();
    if (textValue.isEmpty || text.length != textValue.length) {
      _updateTextField(textValue);
    }
  }

  integerValidation(String text) {
    String textValue = text.characters.where((element) {
      return (element.toString().isDigit());
    }).toString();
    if (text.isEmpty || text.length != textValue.length) {
      _updateTextField(textValue);
    }
  }

  dateValidation(String text) {
    String textValue = text.characters.where((element) {
      return (element.toString().isDigit() ||
          DATETIME_SPECIAL_CHARACTERS.contains(element));
    }).toString();
    if (textValue.isEmpty || text.length != textValue.length) {
      _updateTextField(textValue);
    }
  }

  _updateTextField(textValue) {
    this.controller?.text = textValue;
    this.controller?.selection = TextSelection.fromPosition(
        TextPosition(offset: this.controller?.text.length ?? 0));
  }
}
