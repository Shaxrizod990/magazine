// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Journal _$JournalFromJson(Map<String, dynamic> json) => Journal(
      id: json['id'] as String,
      name: json['name'] as String,
      desc: json['desc'] as String,
      imageHashId: json['imageHashId'] as String,
      fileHashId: json['fileHashId'] as String,
      articleCount: json['articleCount'] as int,
      number: json['number'] as int,
      year: json['year'] as int,
      seenCount: json['seenCount'] as int,
      downloadCount: json['downloadCount'] as int,
      createdDate: json['createdDate'] as String,
      lastModifiedDate: json['lastModifiedDate'] as String,
    );

Map<String, dynamic> _$JournalToJson(Journal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'imageHashId': instance.imageHashId,
      'fileHashId': instance.fileHashId,
      'articleCount': instance.articleCount,
      'number': instance.number,
      'year': instance.year,
      'seenCount': instance.seenCount,
      'downloadCount': instance.downloadCount,
      'createdDate': instance.createdDate,
      'lastModifiedDate': instance.lastModifiedDate,
    };
