import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

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

  @BuiltValueField(wireName: 'message')
  String? get message;

  @BuiltValueField(wireName: 'messsage')
  String? get messsage;

  bool get success;

  String get error => message ?? messsage ?? 'Something went wrong';
}
