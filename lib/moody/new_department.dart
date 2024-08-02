import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDepartmentItem extends StatelessWidget {
  NewDepartmentItem({super.key, required String this.department});

  String department;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          department,
          style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        Text(
          "See more",
          style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff027A48)),
        ),
        Icon(
          Icons.chevron_right,
          color: Color(0xff027A48),
        )
      ],
    );
  }
}
