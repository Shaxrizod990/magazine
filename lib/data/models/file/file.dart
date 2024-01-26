
import 'package:json_annotation/json_annotation.dart';
part 'file.g.dart';
@JsonSerializable(explicitToJson: true)
class File{

  final String hashId;
  final String name;
  final String extension;
  final String fileSize;
  final String fileUrl;
  final String uploadPath;

  File(this.hashId, this.name, this.extension, this.fileSize, this.fileUrl,
      this.uploadPath);
}