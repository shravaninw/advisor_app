import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../core/exceptions/exceptions.dart';

abstract class TimeStamp {
  CreatedTime get createdAt;

  UpdatedTime get updatedAt;
}

class DateTimeSerializerException extends AppException {
  DateTimeSerializerException._(this.message);

  final String message;

  @override
  String toString() {
    return '$DateTimeSerializerException::$message';
  }
}

// use when you need server time and not change them once created
class CreatedTime extends DateTime {
  CreatedTime._fromMicrosecondsSinceEpoch(
    int millisecondsSinceEpoch, {
    bool isUtc = false,
  }) : super.fromMicrosecondsSinceEpoch(millisecondsSinceEpoch, isUtc: isUtc);

  CreatedTime.now() : super.now();

  static CreatedTime serverTime = CreatedTime._fromMicrosecondsSinceEpoch(0);

  Timestamp toTimestamp() => Timestamp.fromDate(this);
}

// use when you need server time to be updated when ever you update
class UpdatedTime extends DateTime {
  UpdatedTime._fromMicrosecondsSinceEpoch(
    int millisecondsSinceEpoch, {
    bool isUtc = false,
  }) : super.fromMicrosecondsSinceEpoch(millisecondsSinceEpoch, isUtc: isUtc);

  UpdatedTime.now() : super.now();

  static UpdatedTime serverTime = UpdatedTime._fromMicrosecondsSinceEpoch(0);

  Timestamp toTimestamp() => Timestamp.fromDate(this);
}

class CreatedTimeSerializer implements PrimitiveSerializer<CreatedTime> {
  @override
  final Iterable<Type> types = BuiltList<Type>(<Type>[CreatedTime]);
  @override
  final String wireName = 'CreateTime';

  @override
  Object serialize(
    Serializers serializers,
    CreatedTime dateTime, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return dateTime == CreatedTime.serverTime
        ? FieldValue.serverTimestamp()
        : dateTime;
  }

  @override
  CreatedTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (serialized is List) {
      return CreatedTime.now();
    }
    if (serialized is DateTime) {
      return CreatedTime._fromMicrosecondsSinceEpoch(
        serialized.microsecondsSinceEpoch,
      );
    }
    if (serialized is Timestamp) {
      return CreatedTime._fromMicrosecondsSinceEpoch(
        serialized.microsecondsSinceEpoch,
      );
    }
    throw DateTimeSerializerException._('Error deserializing $CreatedTime');
  }
}

class UpdatedTimeSerializer implements PrimitiveSerializer<UpdatedTime> {
  @override
  final Iterable<Type> types = BuiltList<Type>(<Type>[UpdatedTime]);
  @override
  final String wireName = 'UpdatedTime';

  @override
  Object serialize(
    Serializers serializers,
    UpdatedTime dateTime, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return FieldValue.serverTimestamp();
  }

  @override
  UpdatedTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (serialized is List) {
      return UpdatedTime.now();
    }
    if (serialized is DateTime) {
      return UpdatedTime._fromMicrosecondsSinceEpoch(
        serialized.microsecondsSinceEpoch,
      );
    }
    if (serialized is Timestamp) {
      return UpdatedTime._fromMicrosecondsSinceEpoch(
        serialized.microsecondsSinceEpoch,
      );
    }
    throw DateTimeSerializerException._('Error deserializing $UpdatedTime');
  }
}

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  final bool structured = false;
  @override
  final Iterable<Type> types = BuiltList<Type>(<Type>[DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(
    Serializers serializers,
    DateTime dateTime, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (!dateTime.isUtc) {
      throw ArgumentError.value(
        dateTime,
        'dateTime',
        'Must be in utc for serialization.',
      );
    }
    return Timestamp.fromDate(dateTime);
  }

  @override
  DateTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    DateTime? date;
    if (serialized is List) {
      return DateTime.now();
    }
    if (serialized is int) {
      date = DateTime.fromMicrosecondsSinceEpoch(serialized);
    }
    if (serialized is Timestamp) {
      date = DateTime.fromMicrosecondsSinceEpoch(
        serialized.microsecondsSinceEpoch,
      );
    }
    if (date == null) {
      throw DateTimeSerializerException._(
        '$DateTimeSerializer::$DateTime cannot be null',
      );
    }
    return date;
  }
}
