import 'package:json_annotation/json_annotation.dart';

part 'picture_from_id_urls_info.g.dart';

@JsonSerializable()
class PictureFromIdUrlsInfo {
  PictureFromIdUrlsInfo({
    required this.link,
  });

  @JsonKey(name: 'full')
  final String link;

  static const fromJson = _$PictureFromIdUrlsInfoFromJson;

  Map<String, dynamic> toJson() => _$PictureFromIdUrlsInfoToJson(this);
}
