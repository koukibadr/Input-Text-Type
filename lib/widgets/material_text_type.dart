import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';
import 'package:web_input_type/validators/validators_constants.dart';

import 'text_input_type.dart';

///creates a [TextField] clone widget based on a given [TextField] and
///based on the type selected { number, integer, datetime, phone }.
///
///inherit [InputTypeField] class.
///
// ignore: must_be_immutable
class MaterialTextType extends InputTypeField {
  ///[TextField] type  parameter used to create the clone widget
  ///with adding input validation.
  ///
  final TextField textField;

  /// the actual rendered [TextField] that contains all attributes of [textField]
  /// with input validation based on the selected type.
  ///
  late TextField randeredTextField;

  /// basic contructor, creates a clone of the given [textField].
  ///
  MaterialTextType({required this.textField}) {
    this.randeredTextField = textField.clone();
  }

  /// creates a clone of the given [textField] with number validation input
  /// with [onTextChanged] function validating the input
  /// used in "Price" input for example
  ///
  MaterialTextType.number({required this.textField}) {
    specialCharacters = DIGIT_SPECIAL_CHARACTERS;
    defaultOnChange = textField.onChanged;

    this.controller = textField.controller;
    if (textField.controller == null) {
      this.controller = TextEditingController();
    }

    this.randeredTextField =
        textField.clone(onChanged: onTextChanged, controller: this.controller);
  }

  /// creates a clone of the given [textField] with integer validation input
  /// with [onTextChanged] function validating the input
  ///
  /// used in "Age" input for example
  ///
  MaterialTextType.integer({required this.textField}) {
    specialCharacters = null;
    defaultOnChange = textField.onChanged;

    this.controller = textField.controller;
    if (textField.controller == null) {
      this.controller = TextEditingController();
    }

    this.randeredTextField =
        textField.clone(onChanged: onTextChanged, controller: this.controller);
  }

  /// creates a clone of the given [textField] with datetime validation input
  /// with [onTextChanged] function validating the input
  ///
  /// used in "Birthday" input for example
  ///
  MaterialTextType.datetime({required this.textField}) {
    specialCharacters = DATETIME_SPECIAL_CHARACTERS;
    defaultOnChange = textField.onChanged;

    this.controller = textField.controller;
    if (textField.controller == null) {
      this.controller = TextEditingController();
    }

    this.randeredTextField =
        textField.clone(onChanged: onTextChanged, controller: this.controller);
  }

  /// creates a clone of the given [textField] with phone validation input
  /// with [onTextChanged] function validating the input
  ///
  /// used in "Phone number" input for example
  ///
  MaterialTextType.phone({required this.textField}) {
    specialCharacters = PHONE_SPECIAL_CHARACTERS;
    defaultOnChange = textField.onChanged;

    if (textField.controller == null) {
      this.controller = TextEditingController();
    } else {
      this.controller = textField.controller;
    }
    this.randeredTextField = textField.clone(
        onChanged: onTextChanged,
        controller: textField.controller == null
            ? this.controller
            : textField.controller);
  }

  @override
  Widget build(BuildContext context) {
    return randeredTextField;
  }
}
