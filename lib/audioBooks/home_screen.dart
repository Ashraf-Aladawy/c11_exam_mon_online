import 'package:flutter/material.dart';

class HomeAudioScreen extends StatelessWidget {
  const HomeAudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20, top: 25),
          child: Image(image: AssetImage("assets/images/Logo.png")),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 25),
            child: Icon(
              Icons.settings_outlined,
              color: Color(0xff4838D1),
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
