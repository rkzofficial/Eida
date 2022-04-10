// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i13;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i12;
import 'application/chat/chat_bloc.dart' as _i14;
import 'application/chat/mic/mic_bloc.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/chat/i_chat_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i5;
import 'infrastructure/chat/chat_repository.dart' as _i10;
import 'infrastructure/core/app_router_injectable_module.dart' as _i15;
import 'infrastructure/core/firebase_injectable_module.dart' as _i16;
import 'presentation/routes/router.gr.dart' as _i3;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appRouterInjectableModule = _$AppRouterInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AppRouter>(() => appRouterInjectableModule.appRouter);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseUserMapper>(() => _i5.FirebaseUserMapper());
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.FirebaseAuthFacade(get<_i4.FirebaseAuth>(),
          get<_i5.FirebaseUserMapper>(), get<_i6.GoogleSignIn>()),
      registerFor: {_prod});
  gh.lazySingleton<_i9.IChatRepository>(() => _i10.ChatRepository());
  gh.factory<_i11.MicBloc>(() => _i11.MicBloc());
  gh.factory<_i12.SignInFormBloc>(
      () => _i12.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i14.ChatBloc>(() => _i14.ChatBloc(get<_i9.IChatRepository>()));
  return get;
}

class _$AppRouterInjectableModule extends _i15.AppRouterInjectableModule {}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}
