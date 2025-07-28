import 'package:intl/intl.dart';
import 'package:notes_app/models/note_model.dart';

NoteModel createNoteModel({
  required String title,
  required String content,
  int color = 0xFF2196F3,
}) {
  return NoteModel(
    title: title,
    subTitle: content,
    date: DateFormat('dd-MM-yyy').format(DateTime.now()),
    color: color,
  );
}
