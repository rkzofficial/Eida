import 'package:dartz/dartz.dart';
import 'package:eida/domain/auth/value_objects.dart';
import 'package:eida/domain/core/entity.dart';
import 'package:eida/domain/core/failures.dart';
import 'package:eida/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
