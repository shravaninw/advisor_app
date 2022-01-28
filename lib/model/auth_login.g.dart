// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthLogin> _$authLoginSerializer = new _$AuthLoginSerializer();

class _$AuthLoginSerializer implements StructuredSerializer<AuthLogin> {
  @override
  final Iterable<Type> types = const [AuthLogin, _$AuthLogin];
  @override
  final String wireName = 'AuthLogin';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthLogin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'authToken',
      serializers.serialize(object.authToken,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
      'userDetails',
      serializers.serialize(object.userDetails,
          specifiedType: const FullType(User)),
    ];

    return result;
  }

  @override
  AuthLogin deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthLoginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'authToken':
          result.authToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userDetails':
          result.userDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthLogin extends AuthLogin {
  @override
  final String authToken;
  @override
  final String refreshToken;
  @override
  final User userDetails;

  factory _$AuthLogin([void Function(AuthLoginBuilder)? updates]) =>
      (new AuthLoginBuilder()..update(updates)).build();

  _$AuthLogin._(
      {required this.authToken,
      required this.refreshToken,
      required this.userDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(authToken, 'AuthLogin', 'authToken');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, 'AuthLogin', 'refreshToken');
    BuiltValueNullFieldError.checkNotNull(
        userDetails, 'AuthLogin', 'userDetails');
  }

  @override
  AuthLogin rebuild(void Function(AuthLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthLoginBuilder toBuilder() => new AuthLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthLogin &&
        authToken == other.authToken &&
        refreshToken == other.refreshToken &&
        userDetails == other.userDetails;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, authToken.hashCode), refreshToken.hashCode),
        userDetails.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthLogin')
          ..add('authToken', authToken)
          ..add('refreshToken', refreshToken)
          ..add('userDetails', userDetails))
        .toString();
  }
}

class AuthLoginBuilder implements Builder<AuthLogin, AuthLoginBuilder> {
  _$AuthLogin? _$v;

  String? _authToken;
  String? get authToken => _$this._authToken;
  set authToken(String? authToken) => _$this._authToken = authToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  UserBuilder? _userDetails;
  UserBuilder get userDetails => _$this._userDetails ??= new UserBuilder();
  set userDetails(UserBuilder? userDetails) =>
      _$this._userDetails = userDetails;

  AuthLoginBuilder();

  AuthLoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authToken = $v.authToken;
      _refreshToken = $v.refreshToken;
      _userDetails = $v.userDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthLogin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthLogin;
  }

  @override
  void update(void Function(AuthLoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthLogin build() {
    _$AuthLogin _$result;
    try {
      _$result = _$v ??
          new _$AuthLogin._(
              authToken: BuiltValueNullFieldError.checkNotNull(
                  authToken, 'AuthLogin', 'authToken'),
              refreshToken: BuiltValueNullFieldError.checkNotNull(
                  refreshToken, 'AuthLogin', 'refreshToken'),
              userDetails: userDetails.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userDetails';
        userDetails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthLogin', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
