import 'package:api_picture_app/data/entity/image_url.dart';
import 'package:api_picture_app/data/entity/user_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'network_picture.g.dart';

@JsonSerializable()
class NetworkPicture {
  NetworkPicture({
    required this.id,
    required this.autor,
    required this.title,
    required this.picture,
});

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'user')
  final UserInfo autor;

  @JsonKey(name: 'description')
  final String? title;

  @JsonKey(name: 'urls')
  final ImageUrl picture;

  static const fromJson = _$NetworkPictureFromJson;

  Map<String, dynamic> toJson() => _$NetworkPictureToJson(this);
}