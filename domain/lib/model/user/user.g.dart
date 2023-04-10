// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      login: json['login'] as String,
      id: json['id'] as int,
      avatarUrl: Uri.parse(json['avatar_url'] as String),
      url: Uri.parse(json['url'] as String),
      reposUrl: Uri.parse(json['repos_url'] as String),
      followers: json['followers'] as int?,
      following: json['following'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl.toString(),
      'url': instance.url.toString(),
      'repos_url': instance.reposUrl.toString(),
      'followers': instance.followers,
      'following': instance.following,
    };
