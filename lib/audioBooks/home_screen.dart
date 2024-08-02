import 'package:c11_exam_mon_online/audioBooks/best_seller.dart';
import 'package:c11_exam_mon_online/audioBooks/categories_item.dart';
import 'package:c11_exam_mon_online/new_department.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10, top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NewDepartmentItem(
                  department: "Categories", color: Color(0xff4838D1)),
              CategoriesItem(),
              NewDepartmentItem(
                  department: "Recommended For You", color: Color(0xff4838D1)),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 15, bottom: 25),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset("assets/images/Image Placeholder 1.png"),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset("assets/images/Image Placeholder 2.png"),
                    ],
                  ),
                ),
              ),
              NewDepartmentItem(
                  department: "Best Seller", color: Color(0xff4838D1)),
              BestSeller(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 60,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff4838D1),
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/homeIcon.png"),
                size: 40,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/SearchIcon.png"),
                ),
                label: "Search"),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/documentIcon.png"),
              ),
              label: "Library",
            ),
          ]),
    );
  }
}
