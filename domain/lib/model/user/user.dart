import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String login,
    required int id,
    @JsonKey(name: 'avatar_url') required Uri avatarUrl,
    required Uri url,
    @JsonKey(name: 'repos_url') required Uri reposUrl,
    int? followers,
    int? following,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
