import 'package:flutter/material.dart';

import '../utils/colorConstants/colors.dart';

class CustomTextfield extends StatefulWidget {
  final controller;
  final hintText;
  final bool obscureText;

  const CustomTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide(color: grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: brown),
            ),
            filled: true,
            fillColor: Colors.white,
        hintText: widget.hintText,
        hintStyle:TextStyle(color: grey)),
        obscureText: widget.obscureText,

      ),
    );
  }
}
