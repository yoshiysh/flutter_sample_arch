import 'package:domain/model/query/order_type.dart';
import 'package:domain/model/query/sort_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query.freezed.dart';

@freezed
class Query with _$Query {
  factory Query({
    String? keyword,
    String? language,
    SortType? sortType,
    OrderType? orderType,
    required bool hasStars,
    required int perPage,
    required int page,
  }) = _Query;
}
