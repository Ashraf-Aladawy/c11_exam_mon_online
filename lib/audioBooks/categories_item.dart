import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: CarouselSlider(
              disableGesture: true,
              options: CarouselOptions(
                height: 40,
              ),
              items: ["Art", "Business", "Comedy", "Drama"].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffF5F5FA)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, right: 40, left: 40),
                          child: Text(
                            ' $i',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ));
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
