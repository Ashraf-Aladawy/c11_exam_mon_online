import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xffECFDF3)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Positive vibes",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff344054)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '''Boost your mood with
positive vibes''',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        "assets/images/Walking the Dog.png",
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.play_circle,
                    color: Colors.green,
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "10 mins",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
