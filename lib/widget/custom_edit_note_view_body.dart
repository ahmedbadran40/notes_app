import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
        child: const Column(
          children: [CustomAppBar(title: 'Edit Note', icon: Icons.check)],
        ),
      ),
    );
  }
}
