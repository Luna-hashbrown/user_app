import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return 
    TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),
        focusColor: Colors.blueGrey,
        hoverColor: Colors.blueGrey,
      ),
      keyboardType: keyboardType,
    );
  }
}