library serializers;

import 'package:advisor_app/model/address.dart';
import 'package:advisor_app/model/api_error.dart';
import 'package:advisor_app/model/app_state.dart';
import 'package:advisor_app/model/auth_login.dart';
import 'package:advisor_app/model/companies.dart';
import 'package:advisor_app/model/user.dart';
import 'package:advisor_app/views/navigation/app_navigation_state.dart';
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