import 'package:flutter/material.dart';
import 'package:tablein/utils/colorConstants/colors.dart';

class LoginContainer extends StatefulWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const LoginContainer({super.key, required this.icon, required this.text, this.onTap});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            border: Border.all(color: brown)
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(widget.icon),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(widget.text,style: TextStyle(fontSize: 17),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
