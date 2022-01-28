import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {
  Address._();

  factory Address([void Function(AddressBuilder) updates]) = _$Address;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Address.serializer, this)!
        as Map<String, dynamic>;
  }

  static Address fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Address.serializer, json)!;
  }

  static Serializer<Address> get serializer => _$addressSerializer;

  String? get addressLine;

  String? get appartment;

  String? get postalCode;

  String? get city;

  String? get state;

  String? get stateCode;

  String? get country;

  String? get countryCode;
}
