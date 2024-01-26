import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final String id;
  final int chatId;
  final String username;
  final String password;
  final String step;
  final String language;
  final String fullname;
  final String phoneNumber;
  final String currentMessageId;
  final String passportSN;
  final String address;
  final String birthDate;
  final String createdDate;
  final String messageType;
  final String content;
  final String recipient;
  final String userMessageFileHashId;
  final String adminMessageFileHashId;

  User(
    this.id,
    this.chatId,
    this.username,
    this.password,
    this.step,
    this.language,
    this.fullname,
    this.phoneNumber,
    this.currentMessageId,
    this.passportSN,
    this.address,
    this.birthDate,
    this.createdDate,
    this.messageType,
    this.content,
    this.recipient,
    this.userMessageFileHashId,
    this.adminMessageFileHashId,
  );
}
