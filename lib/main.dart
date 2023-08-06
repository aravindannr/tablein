import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tablein/presentation/introPage.dart';

void main() => runApp(TableIn());

class TableIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
