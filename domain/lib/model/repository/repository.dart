import 'package:domain/model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  factory Repository({
    required int id,
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    required User owner,
    @JsonKey(name: 'html_url') required Uri htmlUrl,
    String? description,
    String? language,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}
