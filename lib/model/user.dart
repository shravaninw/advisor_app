import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'address.dart';
import 'companies.dart';
import 'datetime.dart';
import 'serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder>, TimeStamp {
  factory User([void Function(UserBuilder)? updates]) = _$User;

  User._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(User.serializer, this)
        as Map<String, dynamic>?;
  }

  static User? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json);
  }

  static Serializer<User> get serializer => _$userSerializer;

  static void _initializeBuilder(UserBuilder b) {
    b
      ..createdAt = CreatedTime.serverTime
      ..updatedAt = UpdatedTime.serverTime;
  }

  @BuiltValueField(wireName: "_id")
  String? get id;

  String? get name;

  String? get videoProfileLink;

  String? get email;

  String? get phone;

  Address? get address;

  @BuiltValueField(wireName: "reset_id")
  String? get resetId;

  String? get firstName;

  String? get lastName;

  String? get appointmentBookingLink;

  String? get role;

  String? get status;

  @BuiltValueField(wireName: "email_access")
  bool? get emailAccess;

  String? get profilePic;

  bool? get assetRequestInProgress;

  bool? get assetShipped;

  String? get stripeCustomerId;

  String? get pushNotificationId;

  BuiltList<Companies> get companies;

  BuiltList<String>? get logos;

  String? get userId;

  String? get companyId;
}
