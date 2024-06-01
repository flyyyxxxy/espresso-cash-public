// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParsedAccountData _$ParsedAccountDataFromJson(Map<String, dynamic> json) {
  switch (json['program']) {
    case 'spl-token':
      return ParsedSplTokenProgramAccountData.fromJson(json);
    case 'stake':
      return ParsedStakeProgramAccountData.fromJson(json);

    default:
      return UnsupportedProgramAccountData.fromJson(json);
  }
}

/// @nodoc
mixin _$ParsedAccountData {
  Object get parsed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenProgramAccountData parsed) splToken,
    required TResult Function(StakeProgramAccountData parsed) stake,
    required TResult Function(Map<String, dynamic> parsed) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplTokenProgramAccountData parsed)? splToken,
    TResult? Function(StakeProgramAccountData parsed)? stake,
    TResult? Function(Map<String, dynamic> parsed)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenProgramAccountData value) splToken,
    required TResult Function(ParsedStakeProgramAccountData value) stake,
    required TResult Function(UnsupportedProgramAccountData value) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult? Function(ParsedStakeProgramAccountData value)? stake,
    TResult? Function(UnsupportedProgramAccountData value)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedAccountDataCopyWith<$Res> {
  factory $ParsedAccountDataCopyWith(
          ParsedAccountData value, $Res Function(ParsedAccountData) then) =
      _$ParsedAccountDataCopyWithImpl<$Res, ParsedAccountData>;
}

/// @nodoc
class _$ParsedAccountDataCopyWithImpl<$Res, $Val extends ParsedAccountData>
    implements $ParsedAccountDataCopyWith<$Res> {
  _$ParsedAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParsedSplTokenProgramAccountDataImplCopyWith<$Res> {
  factory _$$ParsedSplTokenProgramAccountDataImplCopyWith(
          _$ParsedSplTokenProgramAccountDataImpl value,
          $Res Function(_$ParsedSplTokenProgramAccountDataImpl) then) =
      __$$ParsedSplTokenProgramAccountDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SplTokenProgramAccountData parsed});

  $SplTokenProgramAccountDataCopyWith<$Res> get parsed;
}

/// @nodoc
class __$$ParsedSplTokenProgramAccountDataImplCopyWithImpl<$Res>
    extends _$ParsedAccountDataCopyWithImpl<$Res,
        _$ParsedSplTokenProgramAccountDataImpl>
    implements _$$ParsedSplTokenProgramAccountDataImplCopyWith<$Res> {
  __$$ParsedSplTokenProgramAccountDataImplCopyWithImpl(
      _$ParsedSplTokenProgramAccountDataImpl _value,
      $Res Function(_$ParsedSplTokenProgramAccountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parsed = null,
  }) {
    return _then(_$ParsedSplTokenProgramAccountDataImpl(
      null == parsed
          ? _value.parsed
          : parsed // ignore: cast_nullable_to_non_nullable
              as SplTokenProgramAccountData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SplTokenProgramAccountDataCopyWith<$Res> get parsed {
    return $SplTokenProgramAccountDataCopyWith<$Res>(_value.parsed, (value) {
      return _then(_value.copyWith(parsed: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedSplTokenProgramAccountDataImpl
    implements ParsedSplTokenProgramAccountData {
  const _$ParsedSplTokenProgramAccountDataImpl(this.parsed,
      {final String? $type})
      : $type = $type ?? 'spl-token';

  factory _$ParsedSplTokenProgramAccountDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSplTokenProgramAccountDataImplFromJson(json);

  @override
  final SplTokenProgramAccountData parsed;

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedAccountData.splToken(parsed: $parsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSplTokenProgramAccountDataImpl &&
            (identical(other.parsed, parsed) || other.parsed == parsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSplTokenProgramAccountDataImplCopyWith<
          _$ParsedSplTokenProgramAccountDataImpl>
      get copyWith => __$$ParsedSplTokenProgramAccountDataImplCopyWithImpl<
          _$ParsedSplTokenProgramAccountDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenProgramAccountData parsed) splToken,
    required TResult Function(StakeProgramAccountData parsed) stake,
    required TResult Function(Map<String, dynamic> parsed) unsupported,
  }) {
    return splToken(parsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplTokenProgramAccountData parsed)? splToken,
    TResult? Function(StakeProgramAccountData parsed)? stake,
    TResult? Function(Map<String, dynamic> parsed)? unsupported,
  }) {
    return splToken?.call(parsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
    required TResult orElse(),
  }) {
    if (splToken != null) {
      return splToken(parsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenProgramAccountData value) splToken,
    required TResult Function(ParsedStakeProgramAccountData value) stake,
    required TResult Function(UnsupportedProgramAccountData value) unsupported,
  }) {
    return splToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult? Function(ParsedStakeProgramAccountData value)? stake,
    TResult? Function(UnsupportedProgramAccountData value)? unsupported,
  }) {
    return splToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
    required TResult orElse(),
  }) {
    if (splToken != null) {
      return splToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSplTokenProgramAccountDataImplToJson(
      this,
    );
  }
}

abstract class ParsedSplTokenProgramAccountData implements ParsedAccountData {
  const factory ParsedSplTokenProgramAccountData(
          final SplTokenProgramAccountData parsed) =
      _$ParsedSplTokenProgramAccountDataImpl;

  factory ParsedSplTokenProgramAccountData.fromJson(Map<String, dynamic> json) =
      _$ParsedSplTokenProgramAccountDataImpl.fromJson;

  @override
  SplTokenProgramAccountData get parsed;
  @JsonKey(ignore: true)
  _$$ParsedSplTokenProgramAccountDataImplCopyWith<
          _$ParsedSplTokenProgramAccountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedStakeProgramAccountDataImplCopyWith<$Res> {
  factory _$$ParsedStakeProgramAccountDataImplCopyWith(
          _$ParsedStakeProgramAccountDataImpl value,
          $Res Function(_$ParsedStakeProgramAccountDataImpl) then) =
      __$$ParsedStakeProgramAccountDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StakeProgramAccountData parsed});

  $StakeProgramAccountDataCopyWith<$Res> get parsed;
}

/// @nodoc
class __$$ParsedStakeProgramAccountDataImplCopyWithImpl<$Res>
    extends _$ParsedAccountDataCopyWithImpl<$Res,
        _$ParsedStakeProgramAccountDataImpl>
    implements _$$ParsedStakeProgramAccountDataImplCopyWith<$Res> {
  __$$ParsedStakeProgramAccountDataImplCopyWithImpl(
      _$ParsedStakeProgramAccountDataImpl _value,
      $Res Function(_$ParsedStakeProgramAccountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parsed = null,
  }) {
    return _then(_$ParsedStakeProgramAccountDataImpl(
      null == parsed
          ? _value.parsed
          : parsed // ignore: cast_nullable_to_non_nullable
              as StakeProgramAccountData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StakeProgramAccountDataCopyWith<$Res> get parsed {
    return $StakeProgramAccountDataCopyWith<$Res>(_value.parsed, (value) {
      return _then(_value.copyWith(parsed: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedStakeProgramAccountDataImpl
    implements ParsedStakeProgramAccountData {
  const _$ParsedStakeProgramAccountDataImpl(this.parsed, {final String? $type})
      : $type = $type ?? 'stake';

  factory _$ParsedStakeProgramAccountDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedStakeProgramAccountDataImplFromJson(json);

  @override
  final StakeProgramAccountData parsed;

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedAccountData.stake(parsed: $parsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedStakeProgramAccountDataImpl &&
            (identical(other.parsed, parsed) || other.parsed == parsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedStakeProgramAccountDataImplCopyWith<
          _$ParsedStakeProgramAccountDataImpl>
      get copyWith => __$$ParsedStakeProgramAccountDataImplCopyWithImpl<
          _$ParsedStakeProgramAccountDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenProgramAccountData parsed) splToken,
    required TResult Function(StakeProgramAccountData parsed) stake,
    required TResult Function(Map<String, dynamic> parsed) unsupported,
  }) {
    return stake(parsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplTokenProgramAccountData parsed)? splToken,
    TResult? Function(StakeProgramAccountData parsed)? stake,
    TResult? Function(Map<String, dynamic> parsed)? unsupported,
  }) {
    return stake?.call(parsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
    required TResult orElse(),
  }) {
    if (stake != null) {
      return stake(parsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenProgramAccountData value) splToken,
    required TResult Function(ParsedStakeProgramAccountData value) stake,
    required TResult Function(UnsupportedProgramAccountData value) unsupported,
  }) {
    return stake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult? Function(ParsedStakeProgramAccountData value)? stake,
    TResult? Function(UnsupportedProgramAccountData value)? unsupported,
  }) {
    return stake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
    required TResult orElse(),
  }) {
    if (stake != null) {
      return stake(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedStakeProgramAccountDataImplToJson(
      this,
    );
  }
}

abstract class ParsedStakeProgramAccountData implements ParsedAccountData {
  const factory ParsedStakeProgramAccountData(
          final StakeProgramAccountData parsed) =
      _$ParsedStakeProgramAccountDataImpl;

  factory ParsedStakeProgramAccountData.fromJson(Map<String, dynamic> json) =
      _$ParsedStakeProgramAccountDataImpl.fromJson;

  @override
  StakeProgramAccountData get parsed;
  @JsonKey(ignore: true)
  _$$ParsedStakeProgramAccountDataImplCopyWith<
          _$ParsedStakeProgramAccountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnsupportedProgramAccountDataImplCopyWith<$Res> {
  factory _$$UnsupportedProgramAccountDataImplCopyWith(
          _$UnsupportedProgramAccountDataImpl value,
          $Res Function(_$UnsupportedProgramAccountDataImpl) then) =
      __$$UnsupportedProgramAccountDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> parsed});
}

/// @nodoc
class __$$UnsupportedProgramAccountDataImplCopyWithImpl<$Res>
    extends _$ParsedAccountDataCopyWithImpl<$Res,
        _$UnsupportedProgramAccountDataImpl>
    implements _$$UnsupportedProgramAccountDataImplCopyWith<$Res> {
  __$$UnsupportedProgramAccountDataImplCopyWithImpl(
      _$UnsupportedProgramAccountDataImpl _value,
      $Res Function(_$UnsupportedProgramAccountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parsed = null,
  }) {
    return _then(_$UnsupportedProgramAccountDataImpl(
      null == parsed
          ? _value._parsed
          : parsed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsupportedProgramAccountDataImpl
    implements UnsupportedProgramAccountData {
  const _$UnsupportedProgramAccountDataImpl(final Map<String, dynamic> parsed,
      {final String? $type})
      : _parsed = parsed,
        $type = $type ?? 'unsupported';

  factory _$UnsupportedProgramAccountDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnsupportedProgramAccountDataImplFromJson(json);

  final Map<String, dynamic> _parsed;
  @override
  Map<String, dynamic> get parsed {
    if (_parsed is EqualUnmodifiableMapView) return _parsed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parsed);
  }

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedAccountData.unsupported(parsed: $parsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsupportedProgramAccountDataImpl &&
            const DeepCollectionEquality().equals(other._parsed, _parsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parsed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsupportedProgramAccountDataImplCopyWith<
          _$UnsupportedProgramAccountDataImpl>
      get copyWith => __$$UnsupportedProgramAccountDataImplCopyWithImpl<
          _$UnsupportedProgramAccountDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenProgramAccountData parsed) splToken,
    required TResult Function(StakeProgramAccountData parsed) stake,
    required TResult Function(Map<String, dynamic> parsed) unsupported,
  }) {
    return unsupported(parsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplTokenProgramAccountData parsed)? splToken,
    TResult? Function(StakeProgramAccountData parsed)? stake,
    TResult? Function(Map<String, dynamic> parsed)? unsupported,
  }) {
    return unsupported?.call(parsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(parsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenProgramAccountData value) splToken,
    required TResult Function(ParsedStakeProgramAccountData value) stake,
    required TResult Function(UnsupportedProgramAccountData value) unsupported,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult? Function(ParsedStakeProgramAccountData value)? stake,
    TResult? Function(UnsupportedProgramAccountData value)? unsupported,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsupportedProgramAccountDataImplToJson(
      this,
    );
  }
}

abstract class UnsupportedProgramAccountData implements ParsedAccountData {
  const factory UnsupportedProgramAccountData(
      final Map<String, dynamic> parsed) = _$UnsupportedProgramAccountDataImpl;

  factory UnsupportedProgramAccountData.fromJson(Map<String, dynamic> json) =
      _$UnsupportedProgramAccountDataImpl.fromJson;

  @override
  Map<String, dynamic> get parsed;
  @JsonKey(ignore: true)
  _$$UnsupportedProgramAccountDataImplCopyWith<
          _$UnsupportedProgramAccountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
