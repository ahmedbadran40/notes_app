import 'package:flutter/material.dart';
import 'package:notes_app/constance.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: bulidBorder(),
        enabledBorder: bulidBorder(),
        focusedBorder: bulidBorder(color: kPrimaryColor),
        hintText: 'Title',
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
