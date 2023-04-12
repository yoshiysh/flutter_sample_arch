// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repositories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repositories _$RepositoriesFromJson(Map<String, dynamic> json) {
  return _Repositories.fromJson(json);
}

/// @nodoc
mixin _$Repositories {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  List<Repository> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoriesCopyWith<Repositories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoriesCopyWith<$Res> {
  factory $RepositoriesCopyWith(
          Repositories value, $Res Function(Repositories) then) =
      _$RepositoriesCopyWithImpl<$Res, Repositories>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount, List<Repository> items});
}

/// @nodoc
class _$RepositoriesCopyWithImpl<$Res, $Val extends Repositories>
    implements $RepositoriesCopyWith<$Res> {
  _$RepositoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepositoriesCopyWith<$Res>
    implements $RepositoriesCopyWith<$Res> {
  factory _$$_RepositoriesCopyWith(
          _$_Repositories value, $Res Function(_$_Repositories) then) =
      __$$_RepositoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount, List<Repository> items});
}

/// @nodoc
class __$$_RepositoriesCopyWithImpl<$Res>
    extends _$RepositoriesCopyWithImpl<$Res, _$_Repositories>
    implements _$$_RepositoriesCopyWith<$Res> {
  __$$_RepositoriesCopyWithImpl(
      _$_Repositories _value, $Res Function(_$_Repositories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_$_Repositories(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repositories implements _Repositories {
  _$_Repositories(
      {@JsonKey(name: 'total_count') required this.totalCount,
      required final List<Repository> items})
      : _items = items;

  factory _$_Repositories.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoriesFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  final List<Repository> _items;
  @override
  List<Repository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Repositories(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repositories &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoriesCopyWith<_$_Repositories> get copyWith =>
      __$$_RepositoriesCopyWithImpl<_$_Repositories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoriesToJson(
      this,
    );
  }
}

abstract class _Repositories implements Repositories {
  factory _Repositories(
      {@JsonKey(name: 'total_count') required final int totalCount,
      required final List<Repository> items}) = _$_Repositories;

  factory _Repositories.fromJson(Map<String, dynamic> json) =
      _$_Repositories.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  List<Repository> get items;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoriesCopyWith<_$_Repositories> get copyWith =>
      throw _privateConstructorUsedError;
}
