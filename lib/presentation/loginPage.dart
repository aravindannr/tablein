import 'package:flutter/material.dart';
import 'package:tablein/presentation/signupPage.dart';
import 'package:tablein/utils/colorConstants/colors.dart';

import '../widgets/Button.dart';
import '../widgets/loginContainer.dart';
import '../widgets/textFields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("Welcome Back!", style: mainHeading),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextfield(
              controller: usernamecontroller,
              hintText: 'Enter your username',
              obscureText: false,
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextfield(
              controller: passwordcontroller,
              hintText: 'Enter your password',
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: subHeading,
                      )),
                ],
              ),
            ),
            SizedBox(height: 15),
            MyButton(onTap: () {  }, text: 'Sign in',),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 1,
                  color: black,
                ),

                Text("Or Continue with"),

                Container(
                  width: 100,
                  height: 1,
                  color: black,
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginContainer(
                  text: 'google',
                  onTap: () {},
                  imagePath: 'Assets/images/google.png',
                ),
                LoginContainer(
                  text: 'email',
                  onTap: () {},
                  imagePath: 'Assets/images/gmail.png',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                },
                child: Text(
                  "Or Create a New Account",
                  style: subHeading,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
