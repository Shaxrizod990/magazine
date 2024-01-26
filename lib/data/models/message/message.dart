
import 'package:json_annotation/json_annotation.dart';
part 'message.g.dart';
@JsonSerializable(explicitToJson: true)
class Message {
  final String id;
  final String userId;
  final String fullname;
  final String phoneNumber;
  final String passportSN;
  final String address;
  final String birthDate;
  final String messageType;
  final String content;
  final String recipient;
  final String createdDate;
  final String isComplete;
  final String answer;
  final String answeredTime;
  final String appealNumber;
  final String userMessageFileHashId;
  final String adminMessageFileHashId;
  final String userLang;

  Message(
      this.id,
      this.userId,
      this.fullname,
      this.phoneNumber,
      this.passportSN,
      this.address,
      this.birthDate,
      this.messageType,
      this.content,
      this.recipient,
      this.createdDate,
      this.isComplete,
      this.answer,
      this.answeredTime,
      this.appealNumber,
      this.userMessageFileHashId,
      this.adminMessageFileHashId,
      this.userLang);
}
