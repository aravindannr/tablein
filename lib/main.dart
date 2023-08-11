import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tablein/presentation/loginPage.dart';
import 'package:tablein/presentation/signupPage.dart';

void main() => runApp(TableIn());

class TableIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
