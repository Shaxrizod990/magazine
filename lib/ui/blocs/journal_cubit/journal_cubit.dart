import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:magazine/data/repository/api/journal_repository.dart';
import 'package:magazine/ui/blocs/journal_cubit/journal_state.dart';

class JournalCubit extends Cubit<JournalState> {

  JournalCubit() :super(const JournalState(loading: true, journals: []));

  final _repository = JournalRepository();

  Future<void> init() async {
    loadAllJournals();
  }

  Future<void> loadAllJournals() async {
    try {
      emit(const JournalState(loading: true, journals: []));
      final journals = await _repository.getAllJournals();
      emit(JournalState(loading: false, journals: journals));
    } catch (e) {
      emit(const JournalState(loading: null, journals: []));
    }
  }
}