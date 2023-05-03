import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  UserInfo({
    required this.autor,
});

  @JsonKey(name: 'name')
  final String autor;

  static const fromJson = _$UserInfoFromJson;

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}