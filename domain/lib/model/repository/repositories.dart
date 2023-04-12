import 'package:domain/model/repository/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repositories.freezed.dart';
part 'repositories.g.dart';

@freezed
class Repositories with _$Repositories {
  factory Repositories({
    @JsonKey(name: 'total_count') required int totalCount,
    required List<Repository> items,
  }) = _Repositories;

  factory Repositories.fromJson(Map<String, dynamic> json) =>
      _$RepositoriesFromJson(json);
}
