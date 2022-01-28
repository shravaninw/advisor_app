library serializers;

import 'address.dart';
import 'api_error.dart';
import 'app_state.dart';
import 'auth_login.dart';
import 'companies.dart';
import 'user.dart';
import '../views/navigation/app_navigation_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  AppNavigationState,
  Address,
  Companies,
  User,
  AuthLogin,
  ApiError
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
