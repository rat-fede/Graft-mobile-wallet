import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graft_wallet/palette.dart';

class graftTextField extends StatelessWidget {
  graftTextField(
      {this.enabled = true,
      this.hintText,
      this.keyboardType,
      this.controller,
      this.validator,
      this.inputFormatters,
      this.prefixIcon,
      this.suffixIcon,
      this.focusNode});

  final bool enabled;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String Function(String) validator;
  final List<TextInputFormatter> inputFormatters;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
        enabled: enabled,
        controller: controller,
        focusNode: focusNode,
        style: TextStyle(
            fontSize: 18.0,
            color: Theme.of(context).accentTextTheme.overline.color),
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle:
                TextStyle(fontSize: 18.0, color: Theme.of(context).hintColor),
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: graftPalette.teal, width: 2.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).focusColor, width: 1.0)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: graftPalette.red, width: 1.0)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: graftPalette.red, width: 1.0)),
            errorStyle: TextStyle(color: graftPalette.red)),
        validator: validator);
  }
}
