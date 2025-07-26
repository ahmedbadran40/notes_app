import 'package:flutter/material.dart';
import 'package:notes_app/widget/add_note_buttom_sheet.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              },
            );
          },
          child: Icon(Icons.add, size: 30),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
