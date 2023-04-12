import 'package:domain/model/user/user.dart';

class UserData {
  UserData({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.url,
    required this.reposUrl,
    required this.followers,
    required this.following,
  });

  factory UserData.from(User user) => UserData(
        id: user.id,
        name: user.login,
        avatarUrl: user.avatarUrl,
        url: user.url,
        reposUrl: user.reposUrl,
        followers: user.followers,
        following: user.following,
      );

  final int id;
  final String name;
  final Uri avatarUrl;
  final Uri url;
  final Uri reposUrl;
  final int? followers;
  final int? following;
}
