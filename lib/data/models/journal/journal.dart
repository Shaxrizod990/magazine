import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

part 'journal.g.dart';

@JsonSerializable(explicitToJson: true)
class Journal {
  final String id;
  final String name;
  final String desc;
  final String imageHashId;
  final String fileHashId;
  final int articleCount;
  final int number;
  final int year;
  final int seenCount;
  final int downloadCount;
  final String createdDate;
  final String lastModifiedDate;

  Journal({
    required this.id,
    required this.name,
    required this.desc,
    required this.imageHashId,
    required this.fileHashId,
    required this.articleCount,
    required this.number,
    required this.year,
    required this.seenCount,
    required this.downloadCount,
    required this.createdDate,
    required this.lastModifiedDate,
  });

  factory Journal.fromJson(Map<String, dynamic> json) =>
      _$JournalFromJson(json);
  Map<String, dynamic> toJson() => _$JournalToJson(this);
}
