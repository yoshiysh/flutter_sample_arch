// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Query {
  String? get keyword => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  SortType? get sortType => throw _privateConstructorUsedError;
  OrderType? get orderType => throw _privateConstructorUsedError;
  bool get hasStars => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryCopyWith<Query> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryCopyWith<$Res> {
  factory $QueryCopyWith(Query value, $Res Function(Query) then) =
      _$QueryCopyWithImpl<$Res, Query>;
  @useResult
  $Res call(
      {String? keyword,
      String? language,
      SortType? sortType,
      OrderType? orderType,
      bool hasStars,
      int perPage,
      int page});
}

/// @nodoc
class _$QueryCopyWithImpl<$Res, $Val extends Query>
    implements $QueryCopyWith<$Res> {
  _$QueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
    Object? language = freezed,
    Object? sortType = freezed,
    Object? orderType = freezed,
    Object? hasStars = null,
    Object? perPage = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      sortType: freezed == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      hasStars: null == hasStars
          ? _value.hasStars
          : hasStars // ignore: cast_nullable_to_non_nullable
              as bool,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryCopyWith<$Res> implements $QueryCopyWith<$Res> {
  factory _$$_QueryCopyWith(_$_Query value, $Res Function(_$_Query) then) =
      __$$_QueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? keyword,
      String? language,
      SortType? sortType,
      OrderType? orderType,
      bool hasStars,
      int perPage,
      int page});
}

/// @nodoc
class __$$_QueryCopyWithImpl<$Res> extends _$QueryCopyWithImpl<$Res, _$_Query>
    implements _$$_QueryCopyWith<$Res> {
  __$$_QueryCopyWithImpl(_$_Query _value, $Res Function(_$_Query) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
    Object? language = freezed,
    Object? sortType = freezed,
    Object? orderType = freezed,
    Object? hasStars = null,
    Object? perPage = null,
    Object? page = null,
  }) {
    return _then(_$_Query(
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      sortType: freezed == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      hasStars: null == hasStars
          ? _value.hasStars
          : hasStars // ignore: cast_nullable_to_non_nullable
              as bool,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Query implements _Query {
  _$_Query(
      {this.keyword,
      this.language,
      this.sortType,
      this.orderType,
      required this.hasStars,
      required this.perPage,
      required this.page});

  @override
  final String? keyword;
  @override
  final String? language;
  @override
  final SortType? sortType;
  @override
  final OrderType? orderType;
  @override
  final bool hasStars;
  @override
  final int perPage;
  @override
  final int page;

  @override
  String toString() {
    return 'Query(keyword: $keyword, language: $language, sortType: $sortType, orderType: $orderType, hasStars: $hasStars, perPage: $perPage, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Query &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.hasStars, hasStars) ||
                other.hasStars == hasStars) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword, language, sortType,
      orderType, hasStars, perPage, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryCopyWith<_$_Query> get copyWith =>
      __$$_QueryCopyWithImpl<_$_Query>(this, _$identity);
}

abstract class _Query implements Query {
  factory _Query(
      {final String? keyword,
      final String? language,
      final SortType? sortType,
      final OrderType? orderType,
      required final bool hasStars,
      required final int perPage,
      required final int page}) = _$_Query;

  @override
  String? get keyword;
  @override
  String? get language;
  @override
  SortType? get sortType;
  @override
  OrderType? get orderType;
  @override
  bool get hasStars;
  @override
  int get perPage;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_QueryCopyWith<_$_Query> get copyWith =>
      throw _privateConstructorUsedError;
}
