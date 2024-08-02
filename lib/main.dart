import 'package:c11_exam_mon_online/audioBooks/home_screen.dart';
import 'package:c11_exam_mon_online/moody/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeAudioScreen());
  }
}
