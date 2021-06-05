import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';
import 'package:web_input_type/validators/validators_constants.dart';

import 'text_input_type.dart';

///creates a [CupertinoTextField] clone widget based on a given [CupertinoTextField] and
///based on the type selected { number, integer, datetime, phone }.
///
///inherit [InputTypeField] class.
///
// ignore: must_be_immutable
class CupertinoTextType extends InputTypeField {
  ///[CupertinoTextField] type  parameter used to create the clone widget
  ///with adding input validation.
  ///
  final CupertinoTextField cupertinoTextField;

  /// the actual rendered [CupertinoTextField] that contains all attributes of [cupertinoTextField]
  /// with input validation based on the selected type.
  ///
  late CupertinoTextField renderedCupertinoField;

  /// basic contructor, creates a clone of the given [cupertinoTextField].
  ///
  CupertinoTextType({Key? key, required this.cupertinoTextField}) {
    this.renderedCupertinoField = cupertinoTextField.clone();
  }

  /// creates a clone of the given [cupertinoTextField] with number validation input
  /// with [onTextChanged] function validating the input
  /// used in "Price" input for example
  ///
  CupertinoTextType.number({required this.cupertinoTextField}) {
    specialCharacters = DIGIT_SPECIAL_CHARACTERS;
    defaultOnChange = cupertinoTextField.onChanged;

    this.controller = cupertinoTextField.controller;
    if (cupertinoTextField.controller == null) {
      this.controller = TextEditingController();
    }
    
    this.renderedCupertinoField = cupertinoTextField.clone(
        onChanged: onTextChanged,
        controller: this.controller);
  }

  /// creates a clone of the given [cupertinoTextField] with integer validation input
  /// with [onTextChanged] function validating the input
  ///
  /// used in "Age" input for example
  ///
  CupertinoTextType.integer({required this.cupertinoTextField}) {
    specialCharacters = null;
    defaultOnChange = cupertinoTextField.onChanged;

    this.controller = cupertinoTextField.controller;
    if (cupertinoTextField.controller == null) {
      this.controller = TextEditingController();
    }

    this.renderedCupertinoField = cupertinoTextField.clone(
        onChanged: onTextChanged,
        controller: this.controller);
  }

  /// creates a clone of the given [cupertinoTextField] with datetime validation input
  /// with [onTextChanged] function validating the input
  ///
  /// used in "Birthday" input for example
  ///
  CupertinoTextType.datetime({required this.cupertinoTextField}) {
    specialCharacters = DATETIME_SPECIAL_CHARACTERS;
    defaultOnChange = cupertinoTextField.onChanged;

    this.controller = cupertinoTextField.controller;
    if (cupertinoTextField.controller == null) {
      this.controller = TextEditingController();
    }
    
    this.renderedCupertinoField = cupertinoTextField.clone(
        onChanged: onTextChanged,
        controller: this.controller);
  }

  /// creates a clone of the given [cupertinoTextField] with phone validation input
  /// with [onTextChanged] function validating the input
  ///
  /// used in "Phone number" input for example
  ///
  CupertinoTextType.phone({required this.cupertinoTextField}) {
    specialCharacters = PHONE_SPECIAL_CHARACTERS;
    defaultOnChange = cupertinoTextField.onChanged;

    this.controller = cupertinoTextField.controller;
    if (cupertinoTextField.controller == null) {
      this.controller = TextEditingController();
    }
    
    this.renderedCupertinoField = cupertinoTextField.clone(
        onChanged: onTextChanged,
        controller: this.controller);
  }

  @override
  Widget build(BuildContext context) {
    return renderedCupertinoField;
  }
}
