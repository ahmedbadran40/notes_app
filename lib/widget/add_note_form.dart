import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/helper/create_not_model.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/colors_list_view.dart';
import 'package:notes_app/widget/custom_bottom.dart';
import 'package:notes_app/widget/custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title;
  String? content;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          CustomTextFormFiled(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 24),
          CustomTextFormFiled(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          const ColorsListView(),
          const SizedBox(height: 24),

          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBottom(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    final noteModel = createNoteModel(
                      title: title!,
                      content: content!,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
