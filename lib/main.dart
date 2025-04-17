import 'package:ecommerce_flutter_app/views/admin_home.dart';
import 'package:ecommerce_flutter_app/views/login.dart';
import 'package:ecommerce_flutter_app/views/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/":(context)=>const SignupPage(),
        "/login":(context)=>const LoginPage(),
        "/signup":(context)=>const SignupPage(),
        "/home":(context)=>const AdminHome(),
      },
    );
  }
}
