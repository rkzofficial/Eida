// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/chat/chat.dart' as _i8;
import '../pages/chat/chat_page.dart' as _i3;
import '../pages/chat/saved_chat_page.dart' as _i4;
import '../pages/dashboard/dashboard_page.dart' as _i2;
import '../pages/sign_in/signin_page.dart' as _i5;
import '../pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    DashboardRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardPage());
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ChatPage(key: args.key, chatType: args.chatType));
    },
    SavedChatRoute.name: (routeData) {
      final args = routeData.argsAs<SavedChatRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.SavedChatPage(key: args.key, chat: args.chat));
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignInPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(DashboardRoute.name, path: '/dashboard'),
        _i6.RouteConfig(ChatRoute.name, path: '/chat'),
        _i6.RouteConfig(SavedChatRoute.name, path: '/savedchat'),
        _i6.RouteConfig(SignInRoute.name, path: '/signin')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i6.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({_i7.Key? key, required String chatType})
      : super(ChatRoute.name,
            path: '/chat', args: ChatRouteArgs(key: key, chatType: chatType));

  static const String name = 'ChatRoute';
}

class ChatRouteArgs {
  const ChatRouteArgs({this.key, required this.chatType});

  final _i7.Key? key;

  final String chatType;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, chatType: $chatType}';
  }
}

/// generated route for
/// [_i4.SavedChatPage]
class SavedChatRoute extends _i6.PageRouteInfo<SavedChatRouteArgs> {
  SavedChatRoute({_i7.Key? key, required _i8.Chat chat})
      : super(SavedChatRoute.name,
            path: '/savedchat', args: SavedChatRouteArgs(key: key, chat: chat));

  static const String name = 'SavedChatRoute';
}

class SavedChatRouteArgs {
  const SavedChatRouteArgs({this.key, required this.chat});

  final _i7.Key? key;

  final _i8.Chat chat;

  @override
  String toString() {
    return 'SavedChatRouteArgs{key: $key, chat: $chat}';
  }
}

/// generated route for
/// [_i5.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signin');

  static const String name = 'SignInRoute';
}
