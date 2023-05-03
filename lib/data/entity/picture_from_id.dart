import 'package:json_annotation/json_annotation.dart';
import 'picture_from_id_urls_info.dart';

part 'picture_from_id.g.dart';

@JsonSerializable()
class PictureFromId {
  PictureFromId({
    required this.image,
  });

  @JsonKey(name: 'urls')
  final PictureFromIdUrlsInfo image;

  static const fromJson = _$PictureFromIdFromJson;

  Map<String, dynamic> toJson() => _$PictureFromIdToJson(this);
}
