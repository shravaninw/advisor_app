import 'package:advisor_app/model/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_error.g.dart';

abstract class ApiError implements Built<ApiError, ApiErrorBuilder> {
  factory ApiError([void Function(ApiErrorBuilder) updates]) = _$ApiError;

  ApiError._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(ApiError.serializer, this)!
        as Map<String, dynamic>;
  }

  static ApiError? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ApiError.serializer, json);
  }

  static Serializer<ApiError> get serializer => _$apiErrorSerializer;

  @BuiltValueField(wireName: 'status')
  int? get status;

  @BuiltValueField(wireName: 'messsage')
  String? get message;

  bool get success;

  String get error => message ?? 'Something went wrong';
}
