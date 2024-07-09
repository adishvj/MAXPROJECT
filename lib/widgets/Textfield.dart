import 'package:flutter/material.dart';

class changableText extends StatelessWidget {
  final String label;
  final TextEditingController TextController;

  changableText({super.key, required this.label, required this.TextController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextController,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Color(0xFF232327),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
