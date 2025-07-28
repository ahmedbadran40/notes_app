import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constance.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/colors_list_view.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/custom_text_filed.dart';
import 'package:notes_app/widget/edit_note_color_list.dart';

class CustomEditNoteViewBody extends StatefulWidget {
  const CustomEditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<CustomEditNoteViewBody> createState() => _CustomEditNoteViewBodyState();
}

class _CustomEditNoteViewBodyState extends State<CustomEditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                onPressed: () {
                  widget.noteModel.title = title ?? widget.noteModel.title;
                  widget.noteModel.subTitle =
                      content ?? widget.noteModel.subTitle;
                  widget.noteModel.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                title: 'Edit Note',
                icon: Icons.check,
              ),
              const SizedBox(height: 50),
              const SizedBox(height: 50),
              CustomTextFormFiled(
                onChanged: (value) {
                  title = value;
                },
                hintText: widget.noteModel.title,
              ),
              const SizedBox(height: 20),
              CustomTextFormFiled(
                onChanged: (value) {
                  content = value;
                },
                hintText: widget.noteModel.subTitle,
                maxLines: 10,
              ),
              const SizedBox(height: 20),
              EditNoteColorsList(noteModel: widget.noteModel),
            ],
          ),
        ),
      ),
    );
  }
}
