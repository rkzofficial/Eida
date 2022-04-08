// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/chat/chat_page.dart' as _i3;
import '../pages/dashboard/dashboard_page.dart' as _i2;
import '../pages/sign_in/signin_page.dart' as _i4;
import '../pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    DashboardRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardPage());
    },
    ChatRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ChatPage());
    },
    SignInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignInPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(DashboardRoute.name, path: '/dashboard'),
        _i5.RouteConfig(ChatRoute.name, path: '/chat'),
        _i5.RouteConfig(SignInRoute.name, path: '/signin')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i5.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '/chat');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signin');

  static const String name = 'SignInRoute';
}
