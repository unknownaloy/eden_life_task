// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eden_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EdenUser _$EdenUserFromJson(Map<String, dynamic> json) {
  return _EdenUser.fromJson(json);
}

/// @nodoc
mixin _$EdenUser {
  @JsonKey(name: "uid")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "displayName")
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "photoURL")
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EdenUserCopyWith<EdenUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdenUserCopyWith<$Res> {
  factory $EdenUserCopyWith(EdenUser value, $Res Function(EdenUser) then) =
      _$EdenUserCopyWithImpl<$Res, EdenUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "uid") String id,
      @JsonKey(name: "displayName") String? name,
      String? email,
      @JsonKey(name: "photoURL") String? photoUrl});
}

/// @nodoc
class _$EdenUserCopyWithImpl<$Res, $Val extends EdenUser>
    implements $EdenUserCopyWith<$Res> {
  _$EdenUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EdenUserImplCopyWith<$Res>
    implements $EdenUserCopyWith<$Res> {
  factory _$$EdenUserImplCopyWith(
          _$EdenUserImpl value, $Res Function(_$EdenUserImpl) then) =
      __$$EdenUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uid") String id,
      @JsonKey(name: "displayName") String? name,
      String? email,
      @JsonKey(name: "photoURL") String? photoUrl});
}

/// @nodoc
class __$$EdenUserImplCopyWithImpl<$Res>
    extends _$EdenUserCopyWithImpl<$Res, _$EdenUserImpl>
    implements _$$EdenUserImplCopyWith<$Res> {
  __$$EdenUserImplCopyWithImpl(
      _$EdenUserImpl _value, $Res Function(_$EdenUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$EdenUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdenUserImpl implements _EdenUser {
  _$EdenUserImpl(
      {@JsonKey(name: "uid") required this.id,
      @JsonKey(name: "displayName") this.name,
      this.email,
      @JsonKey(name: "photoURL") this.photoUrl});

  factory _$EdenUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdenUserImplFromJson(json);

  @override
  @JsonKey(name: "uid")
  final String id;
  @override
  @JsonKey(name: "displayName")
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: "photoURL")
  final String? photoUrl;

  @override
  String toString() {
    return 'EdenUser(id: $id, name: $name, email: $email, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdenUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EdenUserImplCopyWith<_$EdenUserImpl> get copyWith =>
      __$$EdenUserImplCopyWithImpl<_$EdenUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdenUserImplToJson(
      this,
    );
  }
}

abstract class _EdenUser implements EdenUser {
  factory _EdenUser(
      {@JsonKey(name: "uid") required final String id,
      @JsonKey(name: "displayName") final String? name,
      final String? email,
      @JsonKey(name: "photoURL") final String? photoUrl}) = _$EdenUserImpl;

  factory _EdenUser.fromJson(Map<String, dynamic> json) =
      _$EdenUserImpl.fromJson;

  @override
  @JsonKey(name: "uid")
  String get id;
  @override
  @JsonKey(name: "displayName")
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(name: "photoURL")
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$EdenUserImplCopyWith<_$EdenUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
