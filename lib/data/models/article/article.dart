import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable(explicitToJson: true)
class Article {
  final String id;
  final String title;
  final String journalId;
  final String desc;
  final String text;
  final String author;
  final String imageHashId;
  final String fileHashId;
  final String date;
  final String createdDate;
  final String lastModifiedDate;

  Article(
      this.id,
      this.title,
      this.journalId,
      this.desc,
      this.text,
      this.author,
      this.imageHashId,
      this.fileHashId,
      this.date,
      this.createdDate,
      this.lastModifiedDate);

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
