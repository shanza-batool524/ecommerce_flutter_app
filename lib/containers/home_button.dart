import 'package:flutter/material.dart';

class HomeButton extends StatefulWidget {
 final String name;
 final VoidCallback onTap;
  const HomeButton({super.key, required this.name, required this.onTap,});

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.onTap,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width*0.40,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(widget.name,style: TextStyle(color: Colors.white, fontSize: 20),),),
      ),
    );
  }
}
