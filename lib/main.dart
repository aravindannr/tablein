import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tablein/presentation/loginPage.dart';
import 'package:tablein/presentation/signupPage.dart';
import 'package:firebase_core/firebase_core.dart';
 Future main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(TableIn());
 }
class TableIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
