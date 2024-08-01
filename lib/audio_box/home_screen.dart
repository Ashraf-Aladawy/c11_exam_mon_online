import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName="HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30,top: 25),
          child: Image.asset("assets/images/Logo.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top:25,right: 15),
            child: Icon(Icons.settings_outlined,color: Color(0xff4838D1),size: 25,),
          )
        ],
      ),
    );
  }
}
