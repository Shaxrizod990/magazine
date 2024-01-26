// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

File _$FileFromJson(Map<String, dynamic> json) => File(
      json['hashId'] as String,
      json['name'] as String,
      json['extension'] as String,
      json['fileSize'] as String,
      json['fileUrl'] as String,
      json['uploadPath'] as String,
    );

Map<String, dynamic> _$FileToJson(File instance) => <String, dynamic>{
      'hashId': instance.hashId,
      'name': instance.name,
      'extension': instance.extension,
      'fileSize': instance.fileSize,
      'fileUrl': instance.fileUrl,
      'uploadPath': instance.uploadPath,
    };
