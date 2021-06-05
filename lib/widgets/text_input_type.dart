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
  late TextEditingController? controller;
  late List<String>? specialCharacters;
  late Function(String)? defaultOnChange;

  onTextChanged(String text) {
    textValidation(text).then((value) {
      if (value.isNotEmpty) {
        defaultOnChange?.call(value);
      }
    });
  }

  Future<String> textValidation(String text) async {
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

  _updateTextField(textValue) {
    this.controller?.text = textValue;
    this.controller?.selection = TextSelection.fromPosition(
        TextPosition(offset: this.controller?.text.length ?? 0));
  }
}
