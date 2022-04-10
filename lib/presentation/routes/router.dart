import 'package:auto_route/annotations.dart';
import 'package:eida/presentation/pages/chat/saved_chat_page.dart';

import '../pages/chat/chat_page.dart';
import '../pages/dashboard/dashboard_page.dart';
import '../pages/sign_in/signin_page.dart';
import '../pages/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: DashboardPage, path: '/dashboard'),
    AutoRoute(page: ChatPage, path: '/chat'),
    AutoRoute(page: SavedChatPage, path: '/savedchat'),
    AutoRoute(page: SignInPage, path: '/signin'),
  ],
)
class $AppRouter {}
