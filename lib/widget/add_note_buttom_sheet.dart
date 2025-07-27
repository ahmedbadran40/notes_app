import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widget/add_note_form.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({super.key});

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(right: 16.0, left: 16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                  backgroundColor: Colors.red,
                ),
              );
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                    top: 16,
                  ),
                  child: SingleChildScrollView(child: AddNoteForm()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
