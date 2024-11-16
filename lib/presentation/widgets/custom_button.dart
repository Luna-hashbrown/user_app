import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, 
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
    onPressed: onPressed,
    icon: Icon(Icons.keyboard_return, size: 24),
    label: Text( text, style: TextStyle(fontSize: 18)),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueGrey, 
      foregroundColor: Colors.white,
      minimumSize: Size(150, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    )
  );
  }
}