import 'package:freezed_annotation/freezed_annotation.dart';

part 'eden_user.freezed.dart';
part 'eden_user.g.dart';

@freezed
class EdenUser with _$EdenUser {
  factory EdenUser({
    @JsonKey(name: "uid") required String id,
    @JsonKey(name: "displayName") String? name,
    String? email,
    @JsonKey(name: "photoURL") String? photoUrl,
  }) = _EdenUser;

  factory EdenUser.fromJson(Map<String, dynamic> json) => _$EdenUserFromJson(json);
}
