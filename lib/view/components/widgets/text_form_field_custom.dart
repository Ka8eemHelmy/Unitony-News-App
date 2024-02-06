import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;

  const TextFormFieldCustom({
    this.controller,
    this.hintText,
    this.labelText,
    this.validator,
    this.onFieldSubmitted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
