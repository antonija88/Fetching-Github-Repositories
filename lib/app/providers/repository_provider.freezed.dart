// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'repository_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepositoryStateTearOff {
  const _$RepositoryStateTearOff();

  _RepositoryState call(
      {List<Repository> repos = const [],
      bool isLoading = false,
      int page = 1,
      int limit = 30,
      bool isLoadMore = false,
      Repository? repository = null,
      bool hasNextPage = true}) {
    return _RepositoryState(
      repos: repos,
      isLoading: isLoading,
      page: page,
      limit: limit,
      isLoadMore: isLoadMore,
      repository: repository,
      hasNextPage: hasNextPage,
    );
  }
}

/// @nodoc
const $RepositoryState = _$RepositoryStateTearOff();

/// @nodoc
mixin _$RepositoryState {
  List<Repository> get repos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  bool get isLoadMore => throw _privateConstructorUsedError;
  Repository? get repository => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryStateCopyWith<RepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryStateCopyWith<$Res> {
  factory $RepositoryStateCopyWith(
          RepositoryState value, $Res Function(RepositoryState) then) =
      _$RepositoryStateCopyWithImpl<$Res>;
  $Res call(
      {List<Repository> repos,
      bool isLoading,
      int page,
      int limit,
      bool isLoadMore,
      Repository? repository,
      bool hasNextPage});
}

/// @nodoc
class _$RepositoryStateCopyWithImpl<$Res>
    implements $RepositoryStateCopyWith<$Res> {
  _$RepositoryStateCopyWithImpl(this._value, this._then);

  final RepositoryState _value;
  // ignore: unused_field
  final $Res Function(RepositoryState) _then;

  @override
  $Res call({
    Object? repos = freezed,
    Object? isLoading = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? isLoadMore = freezed,
    Object? repository = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      repos: repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadMore: isLoadMore == freezed
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RepositoryStateCopyWith<$Res>
    implements $RepositoryStateCopyWith<$Res> {
  factory _$RepositoryStateCopyWith(
          _RepositoryState value, $Res Function(_RepositoryState) then) =
      __$RepositoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Repository> repos,
      bool isLoading,
      int page,
      int limit,
      bool isLoadMore,
      Repository? repository,
      bool hasNextPage});
}

/// @nodoc
class __$RepositoryStateCopyWithImpl<$Res>
    extends _$RepositoryStateCopyWithImpl<$Res>
    implements _$RepositoryStateCopyWith<$Res> {
  __$RepositoryStateCopyWithImpl(
      _RepositoryState _value, $Res Function(_RepositoryState) _then)
      : super(_value, (v) => _then(v as _RepositoryState));

  @override
  _RepositoryState get _value => super._value as _RepositoryState;

  @override
  $Res call({
    Object? repos = freezed,
    Object? isLoading = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? isLoadMore = freezed,
    Object? repository = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_RepositoryState(
      repos: repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadMore: isLoadMore == freezed
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RepositoryState implements _RepositoryState {
  const _$_RepositoryState(
      {this.repos = const [],
      this.isLoading = false,
      this.page = 1,
      this.limit = 30,
      this.isLoadMore = false,
      this.repository = null,
      this.hasNextPage = true});

  @JsonKey(defaultValue: const [])
  @override
  final List<Repository> repos;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: 30)
  @override
  final int limit;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadMore;
  @JsonKey(defaultValue: null)
  @override
  final Repository? repository;
  @JsonKey(defaultValue: true)
  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'RepositoryState(repos: $repos, isLoading: $isLoading, page: $page, limit: $limit, isLoadMore: $isLoadMore, repository: $repository, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoryState &&
            (identical(other.repos, repos) ||
                const DeepCollectionEquality().equals(other.repos, repos)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.isLoadMore, isLoadMore) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadMore, isLoadMore)) &&
            (identical(other.repository, repository) ||
                const DeepCollectionEquality()
                    .equals(other.repository, repository)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repos) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(isLoadMore) ^
      const DeepCollectionEquality().hash(repository) ^
      const DeepCollectionEquality().hash(hasNextPage);

  @JsonKey(ignore: true)
  @override
  _$RepositoryStateCopyWith<_RepositoryState> get copyWith =>
      __$RepositoryStateCopyWithImpl<_RepositoryState>(this, _$identity);
}

abstract class _RepositoryState implements RepositoryState {
  const factory _RepositoryState(
      {List<Repository> repos,
      bool isLoading,
      int page,
      int limit,
      bool isLoadMore,
      Repository? repository,
      bool hasNextPage}) = _$_RepositoryState;

  @override
  List<Repository> get repos => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  bool get isLoadMore => throw _privateConstructorUsedError;
  @override
  Repository? get repository => throw _privateConstructorUsedError;
  @override
  bool get hasNextPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepositoryStateCopyWith<_RepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
