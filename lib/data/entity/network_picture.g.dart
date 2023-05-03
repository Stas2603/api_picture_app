// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkPicture _$NetworkPictureFromJson(Map<String, dynamic> json) =>
    NetworkPicture(
      id: json['id'] as String,
      autor: UserInfo.fromJson(json['user'] as Map<String, dynamic>),
      title: json['description'] as String?,
      picture: ImageUrl.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkPictureToJson(NetworkPicture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.autor,
      'description': instance.title,
      'urls': instance.picture,
    };
