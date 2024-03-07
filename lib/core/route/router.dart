import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/route.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: <RouteBase>[
      homeRoutes,
    ],
  ),
);
