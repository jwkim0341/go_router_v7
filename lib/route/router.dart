import 'package:go_router/go_router.dart';
import 'package:go_router_v7/screens/1_basic_screen.dart';
import 'package:go_router_v7/screens/root_screen.dart';

// https://blog.codefactory.ai == / -> path
// https://blog.codefactory.ai/flutter -> /flutter
// / -> home
// /basic -> basic screen
final router = GoRouter(
  routes: [
    GoRoute(
      // 기본 페이지 설정 (home)
      path: '/',
      //화면지정 - 이동할 페이지 반환
      builder: (context, state) {
        return RootScreen();
      },
      routes: [
        GoRoute(
          path: 'basic',
          builder: (context, state) {
            return BasicScreen();
          },
        ),
        GoRoute(
          path: 'named',
          name: 'named_screen',
          builder: (context, state) {
            return BasicScreen();
          },
        ),
      ],
    ),
  ],
);
