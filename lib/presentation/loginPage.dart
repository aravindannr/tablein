import 'package:flutter/material.dart';
import 'package:tablein/utils/colorConstants/colors.dart';

import '../widgets/loginContainer.dart';
import '../widgets/textFields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.2),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text("Welcome Back!", style: mainHeading),
          ),
          SizedBox(height: 30,),
          // Padding(
          //   padding: const EdgeInsets.only(left: 30, top: 8),
          //   child: Text(
          //     "Enter your Username & Password",
          //     style: subHeading,
          //   ),
          // ),
          CustomTextfield(
            controller: _usernamecontroller,
            labelText: 'Username',
            obscureText: false,
            prefixIcon: Icons.person,
          ),
          CustomTextfield(
            controller: _passwordcontroller,
            labelText: 'Password',
            obscureText: true,
            prefixIcon: Icons.lock,
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                LoginContainer(
                  icon: Icons.email,
                  text: 'continue with email',
                  onTap: (){},
                ),
                LoginContainer(
                    icon: Icons.email,
                    text: 'continue with email',
                    onTap: (){}
                ),
                LoginContainer(
                    icon: Icons.email,
                    text: 'continue with email',
                    onTap: (){}
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: darkred),
              child: Text(
                "Login",
                style: TextStyle(color: white, fontSize: 28),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 113),
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password?",
                      style: subHeading,
                    )),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Or Create a New Account",
                    style: subHeading,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
