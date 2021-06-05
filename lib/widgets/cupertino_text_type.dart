import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';
import 'package:web_input_type/validators/validators_constants.dart';

import 'text_input_type.dart';

// ignore: must_be_immutable
class CupertinoTextType extends InputTypeField {
  final CupertinoTextField cupertinoTextField;
  late CupertinoTextField renderedCupertinoField;

  CupertinoTextType({Key? key, required this.cupertinoTextField}) {
    this.renderedCupertinoField =
        cupertinoTextField.clone(controller: cupertinoTextField.controller);
  }

  CupertinoTextType.number({required this.cupertinoTextField}) {
    specialCharacters = DIGIT_SPECIAL_CHARACTERS;
    if (cupertinoTextField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = cupertinoTextField.controller;
    }
    this.renderedCupertinoField = cupertinoTextField.clone(
        onChanged: textValidation,
        controller: cupertinoTextField.controller == null
            ? this.controller
            : cupertinoTextField.controller);
  }

  CupertinoTextType.integer({required this.cupertinoTextField}) {
    if (cupertinoTextField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = cupertinoTextField.controller;
    }
    this.renderedCupertinoField = cupertinoTextField.clone(
        onChanged: textValidation,
        controller: cupertinoTextField.controller == null
            ? this.controller
            : cupertinoTextField.controller);
  }

  CupertinoTextType.datetime({required this.cupertinoTextField}) {
    specialCharacters = DATETIME_SPECIAL_CHARACTERS;
    if (cupertinoTextField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = cupertinoTextField.controller;
    }
    this.renderedCupertinoField = cupertinoTextField.clone(
        onChanged: textValidation,
        controller: cupertinoTextField.controller == null
            ? this.controller
            : cupertinoTextField.controller);
  }

  CupertinoTextType.phone({required this.cupertinoTextField}) {
    specialCharacters = PHONE_SPECIAL_CHARACTERS;
    if (cupertinoTextField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = cupertinoTextField.controller;
    }
    this.renderedCupertinoField = cupertinoTextField.clone(
        onChanged: textValidation,
        controller: cupertinoTextField.controller == null
            ? this.controller
            : cupertinoTextField.controller);
  }

  @override
  Widget build(BuildContext context) {
    return renderedCupertinoField;
  }
}
