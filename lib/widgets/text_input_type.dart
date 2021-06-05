import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';

// ignore: must_be_immutable
abstract class InputTypeField extends StatelessWidget {
  
  late TextEditingController? controller;
  late List<String>? specialCharacters;

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