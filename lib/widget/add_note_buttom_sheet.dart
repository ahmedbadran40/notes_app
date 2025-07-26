import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
      child: Column(children: [SizedBox(height: 32), CustomTextFiled()]),
    );
  }
}
