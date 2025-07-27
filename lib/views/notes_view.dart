import 'package:flutter/material.dart';
import 'package:notes_app/widget/add_note_buttom_sheet.dart';
import 'package:notes_app/widget/custom_notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              context: context,
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: AddNoteButtomSheet(),
                );
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
