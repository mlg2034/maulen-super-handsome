// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:maulen_super_handsome/src/features/app/page/navigation_page.dart'
    as _i1;
import 'package:maulen_super_handsome/src/features/app/router/empty_router_page.dart'
    as _i2;
import 'package:maulen_super_handsome/src/features/main_page/page/main_page.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NavigationPage(),
      );
    },
    EmptyRouterRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i4.PageRouteInfo<void> {
  const NavigationRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EmptyRouterPage]
class EmptyRouterRoute extends _i4.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i4.PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
