import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  User? toDomain(firebase_auth.User? _) {
    return _ == null
        ? null
        : User(
            id: UniqueId.fromUniqueString(_.uid),
            name: StringSingleLine(_.displayName ?? _.email!.split('@').first),
            emailAddress: EmailAddress(_.email!),
            photoUrl: PhotoUrl(_.photoURL ??
                'https://ui-avatars.com/api/?name=${_.email!.split('@').first}'),
          );
  }
}
