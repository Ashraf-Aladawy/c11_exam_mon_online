import 'dart:ui';

import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  ExerciseItem(
      {super.key,
      required String this.text,
      required String this.path,
      required Color this.color});

  String text;
  String path;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Image.asset(path),
              SizedBox(
                width: 15,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
