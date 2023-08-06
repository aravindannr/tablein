import 'package:flutter/material.dart';
import 'package:tablein/utils/colorConstants/colors.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 100),
            child: Text("Welcome Back!", style: mainHeading),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 8),
            child: Text(
              "Enter your Username & Password",
              style: subHeading,
            ),
          ),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _usernamecontroller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Username",
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: black,
                  ),
                  border: OutlineInputBorder()),

            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _passwordcontroller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: black,
                  ),
                  border: OutlineInputBorder()),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20,),
          Center(child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor:darkred
            ),
            child: Text("Login",style: TextStyle(
              color: white,fontSize: 28
            ),),),),
          Padding(
            padding: const EdgeInsets.only(left: 113),
            child: Column(
              children: [
                TextButton(onPressed: (){},child: Text("Forget Password?",style: subHeading,)),
                TextButton(onPressed: (){},child: Text("Or Create a New Account",style: subHeading,),)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
