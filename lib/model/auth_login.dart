import 'package:advisor_app/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'auth_login.g.dart';

abstract class AuthLogin implements Built<AuthLogin, AuthLoginBuilder> {
  AuthLogin._();

  factory AuthLogin([void Function(AuthLoginBuilder) updates]) = _$AuthLogin;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(AuthLogin.serializer, this)!
        as Map<String, dynamic>;
  }

  static AuthLogin fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AuthLogin.serializer, json)!;
  }

  static Serializer<AuthLogin> get serializer => _$authLoginSerializer;

  String get authToken;

  String get refreshToken;

  User get userDetails;
}
