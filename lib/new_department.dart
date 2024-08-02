import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDepartmentItem extends StatelessWidget {
  NewDepartmentItem(
      {super.key, required String this.department, required Color this.color});

  String department;
  Color color;

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
            color: color,
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: color,
        ),
      ],
    );
  }
}
