import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';
import 'package:web_input_type/validators/validators_constants.dart';

// ignore: must_be_immutable
class MaterialTextField extends StatelessWidget {
  final TextField textField;

  late TextField randeredTextField;
  late TextEditingController? controller;
  late List<String>? specialCharacters;

  MaterialTextField({required this.textField}) {
    this.randeredTextField = textField.clone();
    this.controller = this.randeredTextField.controller;
  }

  MaterialTextField.number({required this.textField}) {
    specialCharacters = DIGIT_SPECIAL_CHARACTERS;
    if (textField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = textField.controller;
    }
    this.randeredTextField = textField.clone(
        onChanged: textValidation,
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
        onChanged: textValidation,
        controller: textField.controller == null
            ? this.controller
            : textField.controller);
  }

  MaterialTextField.datetime({required this.textField}) {
    specialCharacters = DATETIME_SPECIAL_CHARACTERS;
    if (textField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = textField.controller;
    }
    this.randeredTextField = textField.clone(
        onChanged: textValidation,
        controller: textField.controller == null
            ? this.controller
            : textField.controller);
  }

  MaterialTextField.phone({required this.textField}) {
    specialCharacters = PHONE_SPECIAL_CHARACTERS;
    if (textField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = textField.controller;
    }
    this.randeredTextField = textField.clone(
        onChanged: textValidation,
        controller: textField.controller == null
            ? this.controller
            : textField.controller);
  }

  @override
  Widget build(BuildContext context) {
    return randeredTextField;
  }

  textValidation(String text) {
    String textValue = text.characters.where((element) {
      return (element.toString().isDigit() ||
          (this.specialCharacters != null &&
              this.specialCharacters!.contains(element)));
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
