import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/models/note_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    try {
      emit(AddNoteSuccess());
      var notesBox = Hive.box<NoteModel>(knotesbox);
      await notesBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
