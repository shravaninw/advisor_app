// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Companies> _$companiesSerializer = new _$CompaniesSerializer();

class _$CompaniesSerializer implements StructuredSerializer<Companies> {
  @override
  final Iterable<Type> types = const [Companies, _$Companies];
  @override
  final String wireName = 'Companies';

  @override
  Iterable<Object?> serialize(Serializers serializers, Companies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkMMB;
    if (value != null) {
      result
        ..add('link_mmb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkMMM;
    if (value != null) {
      result
        ..add('link_mmm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkBoth;
    if (value != null) {
      result
        ..add('link_both')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyId;
    if (value != null) {
      result
        ..add('companyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Companies deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompaniesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link_mmb':
          result.linkMMB = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link_mmm':
          result.linkMMM = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link_both':
          result.linkBoth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Companies extends Companies {
  @override
  final String? status;
  @override
  final String? linkMMB;
  @override
  final String? linkMMM;
  @override
  final String? linkBoth;
  @override
  final String? id;
  @override
  final String? companyId;
  @override
  final String? url;

  factory _$Companies([void Function(CompaniesBuilder)? updates]) =>
      (new CompaniesBuilder()..update(updates)).build();

  _$Companies._(
      {this.status,
      this.linkMMB,
      this.linkMMM,
      this.linkBoth,
      this.id,
      this.companyId,
      this.url})
      : super._();

  @override
  Companies rebuild(void Function(CompaniesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompaniesBuilder toBuilder() => new CompaniesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Companies &&
        status == other.status &&
        linkMMB == other.linkMMB &&
        linkMMM == other.linkMMM &&
        linkBoth == other.linkBoth &&
        id == other.id &&
        companyId == other.companyId &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, status.hashCode), linkMMB.hashCode),
                        linkMMM.hashCode),
                    linkBoth.hashCode),
                id.hashCode),
            companyId.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Companies')
          ..add('status', status)
          ..add('linkMMB', linkMMB)
          ..add('linkMMM', linkMMM)
          ..add('linkBoth', linkBoth)
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('url', url))
        .toString();
  }
}

class CompaniesBuilder implements Builder<Companies, CompaniesBuilder> {
  _$Companies? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _linkMMB;
  String? get linkMMB => _$this._linkMMB;
  set linkMMB(String? linkMMB) => _$this._linkMMB = linkMMB;

  String? _linkMMM;
  String? get linkMMM => _$this._linkMMM;
  set linkMMM(String? linkMMM) => _$this._linkMMM = linkMMM;

  String? _linkBoth;
  String? get linkBoth => _$this._linkBoth;
  set linkBoth(String? linkBoth) => _$this._linkBoth = linkBoth;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  CompaniesBuilder();

  CompaniesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _linkMMB = $v.linkMMB;
      _linkMMM = $v.linkMMM;
      _linkBoth = $v.linkBoth;
      _id = $v.id;
      _companyId = $v.companyId;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Companies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Companies;
  }

  @override
  void update(void Function(CompaniesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Companies build() {
    final _$result = _$v ??
        new _$Companies._(
            status: status,
            linkMMB: linkMMB,
            linkMMM: linkMMM,
            linkBoth: linkBoth,
            id: id,
            companyId: companyId,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
