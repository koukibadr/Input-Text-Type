import 'package:flutter/material.dart';
import 'package:web_input_type/extensions/extension_file.dart';
import 'package:web_input_type/widgets/cupertino_text_type.dart';
import 'package:web_input_type/widgets/material_text_type.dart';

/// class implementing the validations functions.
/// herited by [MaterialTextType] and [CupertinoTextType] and each of them is
/// implementing it's own widget.
///
// ignore: must_be_immutable
abstract class InputTypeField extends StatelessWidget {

  /// controller used to update the value of the input field,
  /// will have reference to the passed controller else if no text controller is passed 
  /// it will contain a new instance of [TextEditingController]
  ///
  late TextEditingController? controller;

  /// list of strings of all permitted characters
  /// when input type  is number, datetime or phone
  late List<String>? specialCharacters;

  /// the given onChange function when creating the input field in the layout.
  /// will be called after validating the input based on the input type.
  late Function(String)? defaultOnChange;


  /// the function that will be called in the field creation
  /// runs the text validation and based on the result it calls [defaultOnChange]
  /// 
  ///[text] the input text that will be validated
  /// 
  onTextChanged(String text) {
    _textValidation(text).then((value) {
      if (value.isNotEmpty) {
        defaultOnChange?.call(value);
      }
    });
  }


  /// runs the input validation based on the input type and [specialCharacters]
  /// return a Future contains the string result of the validation.
  /// 
  /// [text] the input text that will be validated
  /// 
  Future<String> _textValidation(String text) async {
    String textValue = text.characters.where((element) {
      return (element.toString().isDigit() ||
          (this.specialCharacters != null &&
              this.specialCharacters!.contains(element)));
    }).toString();
    if (textValue.isEmpty || text.length != textValue.length) {
      _updateTextField(textValue);
      return "";
    } else {
      return textValue;
    }
  }


  /// update the input text with the new value after validation
  /// it updates [controller] with the new text.
  /// 
  /// [textValue] the text result after validation.
  void _updateTextField(textValue) {
    this.controller?.text = textValue;
    this.controller?.selection = TextSelection.fromPosition(
        TextPosition(offset: this.controller?.text.length ?? 0));
  }
}
