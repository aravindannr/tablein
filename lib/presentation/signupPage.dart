import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tablein/presentation/HomePage.dart';
import 'package:tablein/presentation/loginPage.dart';
import 'package:tablein/userAuth/firebaseAuth_implementation/firebaseAuth_services.dart';

import '../utils/colorConstants/colors.dart';
import '../widgets/Button.dart';
import '../widgets/textFields.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final FirebaseAuthService _auth = FirebaseAuthService();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create your account',
          style: TextStyle(color: black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Register Your Account ",
            style: mainHeading,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextfield(
            controller: nameController,
            hintText: 'Enter your name',
            obscureText: false,
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextfield(
            controller: emailController,
            hintText: "Enter your mail",
            obscureText: false,
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextfield(
            controller: passwordController,
            hintText: "password",
            obscureText: false,
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextfield(
            controller: confirmpasswordController,
            hintText: "confirmpassword",
            obscureText: false,
          ),
          SizedBox(height: 15),
          MyButton( text: 'Sign Up', onTap: () {  },)
        ],
      ),
    );
  }
  void _signUp()async{
    String username = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String confirmpassword = confirmpasswordController.text;

    User? user = await _auth.signUpwithEmailandPassword(email, password);
     if(user != null){
       print("user is successfully created");
       Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
     }else{
       print("some eeror happend");
     }
  }
}
