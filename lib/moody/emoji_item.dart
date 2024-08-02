import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmojiItem extends StatelessWidget {

  EmojiItem({super.key,required String this.image,required String this.text});
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE4E7EC),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(image),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(text,style: GoogleFonts.inter(
                        fontSize:14,
                        fontWeight:FontWeight.w400
                    ),),
                  )
                ],
              ),
          );


  }
}
