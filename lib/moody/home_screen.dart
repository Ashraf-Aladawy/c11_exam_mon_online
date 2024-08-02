import 'package:c11_exam_mon_online/moody/emoji_item.dart';
import 'package:c11_exam_mon_online/moody/exercise_item.dart';
import 'package:c11_exam_mon_online/moody/feature_item.dart';
import 'package:c11_exam_mon_online/new_department.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                  Container(
                      child: EmojiItem(
                          image: "assets/images/Frame1.png", text: "Love")),
                  EmojiItem(image: "assets/images/Frame2.png", text: "Cool"),
                  EmojiItem(image: "assets/images/Frame3.png", text: "Happy"),
                  EmojiItem(image: "assets/images/Frame4.png", text: "Sad"),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    NewDepartmentItem(
                      department: "Feature",
                      color: Color(0xff027A48),
                    ),
                    FeatureItem(),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: NewDepartmentItem(
                department: "Exercise",
                color: Color(0xff027A48),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ExerciseItem(text: "Relaxation",
                            path: "assets/images/exercise1.png",
                            color: Color(0xffF9F5FF)),
                        SizedBox(width: 15,),
                        ExerciseItem(text: "Meditation",
                            path: "assets/images/exercise2.png",
                            color: Color(0xffFDF2FA)),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        ExerciseItem(text: "Beathing",
                            path: "assets/images/exercise3.png",
                            color: Color(0xffFFFAF5)),
                        SizedBox(width: 15,),
                        ExerciseItem(text: "Yoga",
                            path: "assets/images/exercise4.png",
                            color: Color(0xffF0F9FF)),
                      ],
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 60,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Colors.black,

          items:
          [BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/homeBottom.png"), size: 40,),
            label: "",
          ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/iconBottom2.png"),
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/calendarBottom.png"),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/personalBottom.png"),
              ),
              label: "",
            ),
          ]),
    );
  }
}
