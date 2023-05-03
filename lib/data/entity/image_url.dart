import 'package:json_annotation/json_annotation.dart';

part 'image_url.g.dart';

@JsonSerializable()
class ImageUrl {
  ImageUrl({
    required this.imageUrl,
});

  @JsonKey(name: 'small')
  final String imageUrl;

  static const fromJson = _$ImageUrlFromJson;

  Map<String, dynamic> toJson() => _$ImageUrlToJson(this);
}