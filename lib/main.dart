import 'package:flutter/material.dart';
import 'package:signuppage/pages/loginpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signup Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SignupPage(),
    );
  }
}
