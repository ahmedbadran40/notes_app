import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widget/add_note_buttom_sheet.dart';
import 'package:notes_app/widget/custom_notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              context: context,
              builder: (context) {
                return BlocProvider.value(
                  value: BlocProvider.of<NotesCubit>(context),
                  child: const AddNoteButtomSheet(),
                );
              },
            );
          },
          child: const Icon(Icons.add, size: 30),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
