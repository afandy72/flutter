import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/models/note_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    var notesBox = Hive.box(knotesbox);
    await notesBox.add(note);
  }
}
