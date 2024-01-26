// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      json['id'] as String,
      json['title'] as String,
      json['journalId'] as String,
      json['desc'] as String,
      json['text'] as String,
      json['author'] as String,
      json['imageHashId'] as String,
      json['fileHashId'] as String,
      json['date'] as String,
      json['createdDate'] as String,
      json['lastModifiedDate'] as String,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'journalId': instance.journalId,
      'desc': instance.desc,
      'text': instance.text,
      'author': instance.author,
      'imageHashId': instance.imageHashId,
      'fileHashId': instance.fileHashId,
      'date': instance.date,
      'createdDate': instance.createdDate,
      'lastModifiedDate': instance.lastModifiedDate,
    };
