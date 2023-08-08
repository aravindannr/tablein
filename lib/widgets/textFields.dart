import 'package:flutter/material.dart';

import '../utils/colorConstants/colors.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final IconData prefixIcon;


   CustomTextfield(
      {super.key,required this.controller,
        required this.labelText,
        required this.obscureText,
        required this.prefixIcon,
      });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon),
            labelText: widget.labelText,
            labelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: black,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: brown),
              borderRadius: BorderRadius.circular(20),
            ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: brown),
          borderRadius: BorderRadius.circular(20),
        ),),
        obscureText: widget.obscureText,
      ),
    );
  }
}
