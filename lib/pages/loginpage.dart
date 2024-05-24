import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:signuppage/components/my_button.dart';
import 'package:signuppage/components/my_textfield.dart';
import 'package:signuppage/components/square_tile.dart';

class SignupPage extends StatelessWidget {
   SignupPage({super.key});

  //texteditcontroller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  //signUserIn method
   void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),

              //logo
              const Icon(Icons.lock, size: 100,),
              const SizedBox(height: 50,),

              //welcome text
              Text('Welcome back you have been missed!',
              style: TextStyle(color: Colors.grey[800],
              fontSize: 16),),

              const SizedBox(height: 25),

              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //signin button

              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),

                  ],
                ),
              ),

              const SizedBox(height: 50),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'assets/google.jpg'),

                  SizedBox(width: 25,),

                  //apple button
                  SquareTile(imagePath: 'assets/apple.png')
                ],
              ),

              const SizedBox(height: 50),
              
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?', style: TextStyle(color: Colors.grey[700]),),
                  const SizedBox(width: 4,),
                  const Text('Register now',
                  style: TextStyle(color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                  )
                ],
              )
              



            ],
          ),
        ),
      )
    );
  }
}
