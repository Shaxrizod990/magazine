// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['id'] as String,
      json['chatId'] as int,
      json['username'] as String,
      json['password'] as String,
      json['step'] as String,
      json['language'] as String,
      json['fullname'] as String,
      json['phoneNumber'] as String,
      json['currentMessageId'] as String,
      json['passportSN'] as String,
      json['address'] as String,
      json['birthDate'] as String,
      json['createdDate'] as String,
      json['messageType'] as String,
      json['content'] as String,
      json['recipient'] as String,
      json['userMessageFileHashId'] as String,
      json['adminMessageFileHashId'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'username': instance.username,
      'password': instance.password,
      'step': instance.step,
      'language': instance.language,
      'fullname': instance.fullname,
      'phoneNumber': instance.phoneNumber,
      'currentMessageId': instance.currentMessageId,
      'passportSN': instance.passportSN,
      'address': instance.address,
      'birthDate': instance.birthDate,
      'createdDate': instance.createdDate,
      'messageType': instance.messageType,
      'content': instance.content,
      'recipient': instance.recipient,
      'userMessageFileHashId': instance.userMessageFileHashId,
      'adminMessageFileHashId': instance.adminMessageFileHashId,
    };
