import 'dart:convert';

import 'package:advisor_app/core/api/api_client.dart';
import 'package:advisor_app/model/auth_login.dart';
import 'package:http/src/response.dart';

import '../core/services/auth_service.dart';
import 'api_client_impl.dart';

class _ApiUrls {
  String get _baseUrl => 'https://devbackendapp.discoverfin.io/api/v1/users';

  String get _login => '$_baseUrl/login';

  String get _forgotPassword => '$_baseUrl/recover';
}

class AuthServiceImpl implements AuthService {
  final ApiClient _client = ApiClientImpl();
  final _ApiUrls _urls = _ApiUrls();

  @override
  Future<void> dispose() async {}

  @override
  Future<String> forgetPassword({
    required String email,
  }) async {
    final Response response =
        await _client.post(Uri.parse(_urls._forgotPassword),
            body: jsonEncode(<String, dynamic>{
              'email': email,
            }));
    if (response.isSuccess) {
      final String results = response.jsonMap!['message'] as String;
      print(results);
      return results;
    }
    throw response.apiError;
  }

  @override
  Future<void> init() async {}

  @override
  Future<AuthLogin?> signIn({
    required String email,
    required String password,
  }) async {
    print(email);
    print(password);
    final Response response = await _client.post(Uri.parse(_urls._login),
        body: jsonEncode(<String, dynamic>{
          'email': email,
          'password': password,
        }));
    print(response.body);
    if (response.isSuccess) {
      return AuthLogin.fromJson(
        response.jsonMap!['data'] as Map<String, dynamic>,
      );
    }
    throw response.apiError;
  }

  @override
  Future<void> signOut() async {}
}
