import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';
import 'package:web_input_type/validators/validators_constants.dart';

import 'text_input_type.dart';

// ignore: must_be_immutable
class MaterialTextType extends InputTypeField {
  final TextField textField;
  late TextField randeredTextField;

  MaterialTextType({required this.textField}) {
    this.randeredTextField = textField.clone(controller: textField.controller);
  }

  MaterialTextType.number({required this.textField}) {
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

  MaterialTextType.integer({required this.textField}) {
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

  MaterialTextType.datetime({required this.textField}) {
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

  MaterialTextType.phone({required this.textField}) {
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
}
