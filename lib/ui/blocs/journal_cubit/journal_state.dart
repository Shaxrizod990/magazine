import 'package:flutter/cupertino.dart';
import 'package:magazine/data/models/journal/journal.dart';

@immutable
class JournalState {
  final bool? loading;
  final List<Journal> journals;

  const JournalState({required this.loading, required this.journals});
}
