import 'package:c11_exam_mon_online/moody/emoji_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName="HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20,top: 25),
          child: Image.asset("assets/images/moody_logo.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top:25,right: 15),
            child: Icon(Icons.notifications_none_outlined,color: Color(0xff101828),size: 25,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:20,right: 20,top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Hello, ",style: GoogleFonts.inter(
                  fontSize:20,
                  fontWeight:FontWeight.w400

                ),),
                Text("Sara Rose",style: GoogleFonts.inter(
                  fontSize:20,
                  fontWeight:FontWeight.w600

                ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: Row(
                children: [
                  Text("How are you feeling today ?",style: GoogleFonts.inter(
                    fontSize:16,
                    fontWeight:FontWeight.w400,
                    color:Color(0xff371B34)

                  ),),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  EmojiItem(image: "assets/images/Frame1.png", text: "Love"),
                  EmojiItem(image: "assets/images/Frame2.png", text: "Cool"),
                  EmojiItem(image: "assets/images/Frame3.png", text: "Happy"),
                  EmojiItem(image: "assets/images/Frame4.png", text: "Sad"),
                ],
              ),
            ),



          ],
        ),
      ),

    );
  }
}
