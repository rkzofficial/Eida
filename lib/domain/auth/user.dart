import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entity.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User implements IEntity {
  const factory User({
    required UniqueId id,
    required StringSingleLine name,
    required EmailAddress emailAddress,
    required PhotoUrl photoUrl,
  }) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .andThen(photoUrl.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
