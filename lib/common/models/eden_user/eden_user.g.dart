// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eden_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EdenUserImpl _$$EdenUserImplFromJson(Map<String, dynamic> json) =>
    _$EdenUserImpl(
      id: json['uid'] as String,
      name: json['displayName'] as String?,
      email: json['email'] as String?,
      photoUrl: json['photoURL'] as String?,
    );

Map<String, dynamic> _$$EdenUserImplToJson(_$EdenUserImpl instance) =>
    <String, dynamic>{
      'uid': instance.id,
      'displayName': instance.name,
      'email': instance.email,
      'photoURL': instance.photoUrl,
    };
