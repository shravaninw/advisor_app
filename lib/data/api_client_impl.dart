import '../core/api/api_client.dart';

class ApiClientImpl extends ApiClient {
  static const String _default =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6MX0.eyJpc3MiOiJyZW5uYW1vYmlsZS5jb20iLCJpYXQiOjE2MzA0NDAwMDB9.iAQpKBkyRbbPhb9f1pq0u92AFNXCitPJ1u9XBZyfax4';

  final Map<String, String> _headers = <String, String>{
    'Content-Type': 'application/json',
    'AccessKey': _default,
  };

  void setAccessKey(String? key) {
    _headers['AccessKey'] = key ?? _default;
  }

  void setLanguage(String? lang) {
    if (lang != null) {
      _headers['lang'] = lang;
      _headers['locale'] = lang;
    } else {
      _headers.remove('lang');
      _headers.remove('locale');
    }
  }

  @override
  Map<String, String> get defaultHeaders => <String, String>{
        ..._headers,
        ...super.defaultHeaders,
      };
}
