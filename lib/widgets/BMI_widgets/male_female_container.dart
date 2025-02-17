import 'dart:developer';

import 'package:first_one/main.dart';
import 'package:flutter/material.dart';

class MaleFemaleContainer extends StatelessWidget {
  final String TybeName;
  final Color backgroungTybeColor;

  final String ImageTybeIcon;
  final Function()? onTap;

  const MaleFemaleContainer(
      {super.key,
      required this.TybeName,
      required this.backgroungTybeColor,
      required this.ImageTybeIcon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
      color: backgroungTybeColor,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
            color: backgroungTybeColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset(ImageTybeIcon)),
              SizedBox(height: 20),
              Text(
                TybeName,
                style: TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
