import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  final double size;
  String? text;
  bool? isText;
  IconData? icon;
  AppButton({
    Key? key,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.size,
    this.text,
    this.isText = true,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: backgroundColor,
            border: Border.all(color: borderColor)),
        child: isText == true
            ? Center(
                child: Text(
                  text!,
                  style: TextStyle(color: color),
                ),
              )
            : Center(
                child: Icon(
                  icon,
                  color: color,
                ),
              ));
  }
}
