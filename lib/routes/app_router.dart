import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movil_wrc_app/pages/calendar_page.dart';
import 'package:movil_wrc_app/pages/dashboard_page.dart';
import 'package:movil_wrc_app/pages/drivers_page.dart';
import 'package:movil_wrc_app/pages/home_page.dart';

class RoutesNames {
  static String calendar = '/calendar';
  static String dashboard = '/dashboard';
  static String drivers = '/drivers';
  static String home = '/';
}

final routerProvider = Provider((ref) => routerConfig);

final routerConfig = GoRouter(routes: [
  GoRoute(
    path: RoutesNames.home,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: RoutesNames.calendar,
    builder: (context, state) => const CalendarPage(),
  ),
  GoRoute(
    path: RoutesNames.dashboard,
    builder: (context, state) => const DashboardPage(),
  ),
  GoRoute(
    path: RoutesNames.drivers,
    builder: (context, state) => const DriversPage(),
  ),
  

]);