// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      json['id'] as String,
      json['userId'] as String,
      json['fullname'] as String,
      json['phoneNumber'] as String,
      json['passportSN'] as String,
      json['address'] as String,
      json['birthDate'] as String,
      json['messageType'] as String,
      json['content'] as String,
      json['recipient'] as String,
      json['createdDate'] as String,
      json['isComplete'] as String,
      json['answer'] as String,
      json['answeredTime'] as String,
      json['appealNumber'] as String,
      json['userMessageFileHashId'] as String,
      json['adminMessageFileHashId'] as String,
      json['userLang'] as String,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'fullname': instance.fullname,
      'phoneNumber': instance.phoneNumber,
      'passportSN': instance.passportSN,
      'address': instance.address,
      'birthDate': instance.birthDate,
      'messageType': instance.messageType,
      'content': instance.content,
      'recipient': instance.recipient,
      'createdDate': instance.createdDate,
      'isComplete': instance.isComplete,
      'answer': instance.answer,
      'answeredTime': instance.answeredTime,
      'appealNumber': instance.appealNumber,
      'userMessageFileHashId': instance.userMessageFileHashId,
      'adminMessageFileHashId': instance.adminMessageFileHashId,
      'userLang': instance.userLang,
    };
