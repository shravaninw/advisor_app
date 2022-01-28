// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'companies',
      serializers.serialize(object.companies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Companies)])),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(CreatedTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(UpdatedTime)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoProfileLink;
    if (value != null) {
      result
        ..add('videoProfileLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Address)));
    }
    value = object.resetId;
    if (value != null) {
      result
        ..add('reset_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appointmentBookingLink;
    if (value != null) {
      result
        ..add('appointmentBookingLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAccess;
    if (value != null) {
      result
        ..add('email_access')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.profilePic;
    if (value != null) {
      result
        ..add('profilePic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetRequestInProgress;
    if (value != null) {
      result
        ..add('assetRequestInProgress')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.assetShipped;
    if (value != null) {
      result
        ..add('assetShipped')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stripeCustomerId;
    if (value != null) {
      result
        ..add('stripeCustomerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pushNotificationId;
    if (value != null) {
      result
        ..add('pushNotificationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logos;
    if (value != null) {
      result
        ..add('logos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
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
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'videoProfileLink':
          result.videoProfileLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'reset_id':
          result.resetId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appointmentBookingLink':
          result.appointmentBookingLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email_access':
          result.emailAccess = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'profilePic':
          result.profilePic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'assetRequestInProgress':
          result.assetRequestInProgress = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'assetShipped':
          result.assetShipped = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stripeCustomerId':
          result.stripeCustomerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pushNotificationId':
          result.pushNotificationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companies':
          result.companies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Companies)]))!
              as BuiltList<Object?>);
          break;
        case 'logos':
          result.logos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(CreatedTime)) as CreatedTime;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(UpdatedTime)) as UpdatedTime;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? videoProfileLink;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final Address? address;
  @override
  final String? resetId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? appointmentBookingLink;
  @override
  final String? role;
  @override
  final String? status;
  @override
  final bool? emailAccess;
  @override
  final String? profilePic;
  @override
  final bool? assetRequestInProgress;
  @override
  final bool? assetShipped;
  @override
  final String? stripeCustomerId;
  @override
  final String? pushNotificationId;
  @override
  final BuiltList<Companies> companies;
  @override
  final BuiltList<String>? logos;
  @override
  final String? userId;
  @override
  final String? companyId;
  @override
  final CreatedTime createdAt;
  @override
  final UpdatedTime updatedAt;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.name,
      this.videoProfileLink,
      this.email,
      this.phone,
      this.address,
      this.resetId,
      this.firstName,
      this.lastName,
      this.appointmentBookingLink,
      this.role,
      this.status,
      this.emailAccess,
      this.profilePic,
      this.assetRequestInProgress,
      this.assetShipped,
      this.stripeCustomerId,
      this.pushNotificationId,
      required this.companies,
      this.logos,
      this.userId,
      this.companyId,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(companies, 'User', 'companies');
    BuiltValueNullFieldError.checkNotNull(createdAt, 'User', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt, 'User', 'updatedAt');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        name == other.name &&
        videoProfileLink == other.videoProfileLink &&
        email == other.email &&
        phone == other.phone &&
        address == other.address &&
        resetId == other.resetId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        appointmentBookingLink == other.appointmentBookingLink &&
        role == other.role &&
        status == other.status &&
        emailAccess == other.emailAccess &&
        profilePic == other.profilePic &&
        assetRequestInProgress == other.assetRequestInProgress &&
        assetShipped == other.assetShipped &&
        stripeCustomerId == other.stripeCustomerId &&
        pushNotificationId == other.pushNotificationId &&
        companies == other.companies &&
        logos == other.logos &&
        userId == other.userId &&
        companyId == other.companyId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, id.hashCode), name.hashCode), videoProfileLink.hashCode), email.hashCode), phone.hashCode),
                                                                                address.hashCode),
                                                                            resetId.hashCode),
                                                                        firstName.hashCode),
                                                                    lastName.hashCode),
                                                                appointmentBookingLink.hashCode),
                                                            role.hashCode),
                                                        status.hashCode),
                                                    emailAccess.hashCode),
                                                profilePic.hashCode),
                                            assetRequestInProgress.hashCode),
                                        assetShipped.hashCode),
                                    stripeCustomerId.hashCode),
                                pushNotificationId.hashCode),
                            companies.hashCode),
                        logos.hashCode),
                    userId.hashCode),
                companyId.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('name', name)
          ..add('videoProfileLink', videoProfileLink)
          ..add('email', email)
          ..add('phone', phone)
          ..add('address', address)
          ..add('resetId', resetId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('appointmentBookingLink', appointmentBookingLink)
          ..add('role', role)
          ..add('status', status)
          ..add('emailAccess', emailAccess)
          ..add('profilePic', profilePic)
          ..add('assetRequestInProgress', assetRequestInProgress)
          ..add('assetShipped', assetShipped)
          ..add('stripeCustomerId', stripeCustomerId)
          ..add('pushNotificationId', pushNotificationId)
          ..add('companies', companies)
          ..add('logos', logos)
          ..add('userId', userId)
          ..add('companyId', companyId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _videoProfileLink;
  String? get videoProfileLink => _$this._videoProfileLink;
  set videoProfileLink(String? videoProfileLink) =>
      _$this._videoProfileLink = videoProfileLink;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  String? _resetId;
  String? get resetId => _$this._resetId;
  set resetId(String? resetId) => _$this._resetId = resetId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _appointmentBookingLink;
  String? get appointmentBookingLink => _$this._appointmentBookingLink;
  set appointmentBookingLink(String? appointmentBookingLink) =>
      _$this._appointmentBookingLink = appointmentBookingLink;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _emailAccess;
  bool? get emailAccess => _$this._emailAccess;
  set emailAccess(bool? emailAccess) => _$this._emailAccess = emailAccess;

  String? _profilePic;
  String? get profilePic => _$this._profilePic;
  set profilePic(String? profilePic) => _$this._profilePic = profilePic;

  bool? _assetRequestInProgress;
  bool? get assetRequestInProgress => _$this._assetRequestInProgress;
  set assetRequestInProgress(bool? assetRequestInProgress) =>
      _$this._assetRequestInProgress = assetRequestInProgress;

  bool? _assetShipped;
  bool? get assetShipped => _$this._assetShipped;
  set assetShipped(bool? assetShipped) => _$this._assetShipped = assetShipped;

  String? _stripeCustomerId;
  String? get stripeCustomerId => _$this._stripeCustomerId;
  set stripeCustomerId(String? stripeCustomerId) =>
      _$this._stripeCustomerId = stripeCustomerId;

  String? _pushNotificationId;
  String? get pushNotificationId => _$this._pushNotificationId;
  set pushNotificationId(String? pushNotificationId) =>
      _$this._pushNotificationId = pushNotificationId;

  ListBuilder<Companies>? _companies;
  ListBuilder<Companies> get companies =>
      _$this._companies ??= new ListBuilder<Companies>();
  set companies(ListBuilder<Companies>? companies) =>
      _$this._companies = companies;

  ListBuilder<String>? _logos;
  ListBuilder<String> get logos => _$this._logos ??= new ListBuilder<String>();
  set logos(ListBuilder<String>? logos) => _$this._logos = logos;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  CreatedTime? _createdAt;
  CreatedTime? get createdAt => _$this._createdAt;
  set createdAt(CreatedTime? createdAt) => _$this._createdAt = createdAt;

  UpdatedTime? _updatedAt;
  UpdatedTime? get updatedAt => _$this._updatedAt;
  set updatedAt(UpdatedTime? updatedAt) => _$this._updatedAt = updatedAt;

  UserBuilder() {
    User._initializeBuilder(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _videoProfileLink = $v.videoProfileLink;
      _email = $v.email;
      _phone = $v.phone;
      _address = $v.address?.toBuilder();
      _resetId = $v.resetId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _appointmentBookingLink = $v.appointmentBookingLink;
      _role = $v.role;
      _status = $v.status;
      _emailAccess = $v.emailAccess;
      _profilePic = $v.profilePic;
      _assetRequestInProgress = $v.assetRequestInProgress;
      _assetShipped = $v.assetShipped;
      _stripeCustomerId = $v.stripeCustomerId;
      _pushNotificationId = $v.pushNotificationId;
      _companies = $v.companies.toBuilder();
      _logos = $v.logos?.toBuilder();
      _userId = $v.userId;
      _companyId = $v.companyId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              name: name,
              videoProfileLink: videoProfileLink,
              email: email,
              phone: phone,
              address: _address?.build(),
              resetId: resetId,
              firstName: firstName,
              lastName: lastName,
              appointmentBookingLink: appointmentBookingLink,
              role: role,
              status: status,
              emailAccess: emailAccess,
              profilePic: profilePic,
              assetRequestInProgress: assetRequestInProgress,
              assetShipped: assetShipped,
              stripeCustomerId: stripeCustomerId,
              pushNotificationId: pushNotificationId,
              companies: companies.build(),
              logos: _logos?.build(),
              userId: userId,
              companyId: companyId,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'User', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, 'User', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();

        _$failedField = 'companies';
        companies.build();
        _$failedField = 'logos';
        _logos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
