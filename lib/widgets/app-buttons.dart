import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../misc/colors.dart';
import 'app-text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icons;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool isIcon;
  
  AppButtons({Key? key,
    this.isIcon= false,
    this.text,
    this.icons,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor
      ),
      child: isIcon==false?Center(child: AppText(text: text!, color:color)):Center(child: Icon(icons, color: color,)),
    );
  }
}


