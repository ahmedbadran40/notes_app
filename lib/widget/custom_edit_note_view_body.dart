import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/custom_text_filed.dart';

class customEditNoteViewBody extends StatelessWidget {
  const customEditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
        child: SingleChildScrollView(
          child: const Column(
            children: [
              CustomAppBar(title: 'Edit Note', icon: Icons.check),
              SizedBox(height: 50),
              CustomTextFiled(hintText: 'Title'),
              SizedBox(height: 20),
              CustomTextFiled(hintText: 'Content', maxLines: 10),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
