import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'companies.g.dart';

abstract class Companies implements Built<Companies, CompaniesBuilder> {
  Companies._();

  factory Companies([void Function(CompaniesBuilder) updates]) = _$Companies;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Companies.serializer, this)!
        as Map<String, dynamic>;
  }

  static Companies fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Companies.serializer, json)!;
  }

  static Serializer<Companies> get serializer => _$companiesSerializer;

  String? get status;

  @BuiltValueField(wireName: 'link_mmb')
  String? get linkMMB;

  @BuiltValueField(wireName: 'link_mmm')
  String? get linkMMM;

  @BuiltValueField(wireName: 'link_both')
  String? get linkBoth;

  @BuiltValueField(wireName: '_id')
  String? get id;

  String? get companyId;

  String? get url;
}
