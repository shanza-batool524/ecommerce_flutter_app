import 'package:ecommerce_flutter_app/controllers/auth_service.dart';
import 'package:flutter/material.dart';

class CheckUser extends StatefulWidget {
  const CheckUser({super.key});

  @override
  State<CheckUser> createState() => _CheckUserState();
}

class _CheckUserState extends State<CheckUser> {

  @override
  void initState() {
    super.initState();
    AuthService().isLoggedIn().then((isLoggedIn) {
      if (isLoggedIn) {
        Navigator.pushReplacementNamed(context, "/home");
      } else {
        Navigator.pushReplacementNamed(context, "/login");
      }
    }).catchError((error) {
      // Handle error if needed
      print("Error checking login status: $error");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CircularProgressIndicator(),);
  }
}
