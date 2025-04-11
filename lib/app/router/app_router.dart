import 'package:daelim_2025_1/app/router/app_route.dart';
import 'package:daelim_2025_1/presentation/main/main_screen.dart';
import 'package:daelim_2025_1/presentation/start/start_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: AppRoute.start.toPath,
  routes: [
    GoRoute(path: '/start', builder: (context, state) => StartScreen()),
    GoRoute(path: '/main', builder: (context, state) => MainScreen()),
  ],
);
