import 'package:flutter/material.dart';
import 'package:notes_app/constance.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: bulidBorder(),
        enabledBorder: bulidBorder(),
        focusedBorder: bulidBorder(color: kPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder bulidBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: color ?? Colors.white, width: 1.0),
    );
  }
}
