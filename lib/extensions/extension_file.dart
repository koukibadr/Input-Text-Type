import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension TextFieldExtensions on TextField {
  TextField clone(
      {Function(String)? onChanged, TextEditingController? controller}) {
    return TextField(
      key: this.key,
      controller: controller,
      focusNode: this.focusNode,
      decoration: this.decoration,
      keyboardType: this.keyboardType,
      textInputAction: this.textInputAction,
      textCapitalization: this.textCapitalization,
      style: this.style,
      strutStyle: this.strutStyle,
      textAlign: this.textAlign,
      textAlignVertical: this.textAlignVertical,
      textDirection: this.textDirection,
      readOnly: this.readOnly,
      toolbarOptions: this.toolbarOptions,
      showCursor: this.showCursor,
      autofocus: this.autofocus,
      obscuringCharacter: this.obscuringCharacter,
      obscureText: this.obscureText,
      autocorrect: this.autocorrect,
      smartDashesType: this.smartDashesType,
      smartQuotesType: this.smartQuotesType,
      enableSuggestions: this.enableSuggestions,
      maxLines: this.maxLines,
      minLines: this.minLines,
      expands: this.expands,
      maxLength: this.maxLength,
      maxLengthEnforced: this.maxLengthEnforced,
      maxLengthEnforcement: this.maxLengthEnforcement,
      onChanged: onChanged,
      onEditingComplete: this.onEditingComplete,
      onSubmitted: this.onSubmitted,
      onAppPrivateCommand: this.onAppPrivateCommand,
      inputFormatters: this.inputFormatters,
      enabled: this.enabled,
      cursorWidth: this.cursorWidth,
      cursorHeight: this.cursorHeight,
      cursorRadius: this.cursorRadius,
      cursorColor: this.cursorColor,
      selectionHeightStyle: this.selectionHeightStyle,
      selectionWidthStyle: this.selectionWidthStyle,
      keyboardAppearance: this.keyboardAppearance,
      scrollPadding: this.scrollPadding,
      dragStartBehavior: this.dragStartBehavior,
      enableInteractiveSelection: this.enableInteractiveSelection,
      selectionControls: this.selectionControls,
      onTap: this.onTap,
      mouseCursor: this.mouseCursor,
      buildCounter: this.buildCounter,
      scrollController: this.scrollController,
      scrollPhysics: this.scrollPhysics,
      autofillHints: this.autofillHints,
      restorationId: this.restorationId,
    );
  }
}

extension CupertinoTextFieldExtension on CupertinoTextField {
  CupertinoTextField clone(
      {Function(String)? onChanged, TextEditingController? controller}) {
    return CupertinoTextField(
      key: this.key,
      controller: controller,
      focusNode: this.focusNode,
      decoration: this.decoration,
      padding: this.padding,
      placeholder: this.placeholder,
      placeholderStyle: this.placeholderStyle,
      prefix: this.prefix,
      prefixMode: this.prefixMode,
      clearButtonMode: this.clearButtonMode,
      keyboardType: this.keyboardType,
      textInputAction: this.textInputAction,
      textCapitalization: this.textCapitalization,
      style: this.style,
      strutStyle: this.strutStyle,
      textAlign: this.textAlign,
      textAlignVertical: this.textAlignVertical,
      readOnly: this.readOnly,
      toolbarOptions: this.toolbarOptions,
      showCursor: this.showCursor,
      autofocus: this.autofocus,
      obscuringCharacter: this.obscuringCharacter,
      obscureText: this.obscureText,
      autocorrect: this.autocorrect,
      smartDashesType: this.smartDashesType,
      smartQuotesType: this.smartQuotesType,
      enableSuggestions: this.enableSuggestions,
      maxLines: this.maxLines,
      minLines: this.minLines,
      expands: this.expands,
      maxLength: this.maxLength,
      maxLengthEnforced: this.maxLengthEnforced,
      maxLengthEnforcement: this.maxLengthEnforcement,
      onChanged: onChanged,
      onEditingComplete: this.onEditingComplete,
      onSubmitted: this.onSubmitted,
      inputFormatters: this.inputFormatters,
      enabled: this.enabled,
      cursorWidth: this.cursorWidth,
      cursorHeight: this.cursorHeight,
      cursorRadius: this.cursorRadius,
      cursorColor: this.cursorColor,
      selectionHeightStyle: this.selectionHeightStyle,
      selectionWidthStyle: this.selectionWidthStyle,
      keyboardAppearance: this.keyboardAppearance,
      scrollPadding: this.scrollPadding,
      dragStartBehavior: this.dragStartBehavior,
      enableInteractiveSelection: this.enableInteractiveSelection,
      selectionControls: this.selectionControls,
      onTap: this.onTap,
      scrollController: this.scrollController,
      scrollPhysics: this.scrollPhysics,
      autofillHints: this.autofillHints,
      restorationId: this.restorationId,
    );
  }
}

extension StringExtension on String {
  bool isDigit() {
    return double.tryParse(this) != null;
  }

  bool isInteger() {
    return int.tryParse(this) != null;
  }
}
