import 'package:notes_app/models/note_model.dart';

sealed class NotesState {}

class NotesCubitInitial extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}
