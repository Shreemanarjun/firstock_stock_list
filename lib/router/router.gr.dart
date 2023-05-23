// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:firstock_stock_list/features/bookmarked/view/bookamrked_view.dart'
    deferred as _i3;
import 'package:firstock_stock_list/features/bussiness/view/bussiness_view.dart'
    deferred as _i4;
import 'package:firstock_stock_list/features/home/view/home_view.dart'
    deferred as _i1;
import 'package:firstock_stock_list/features/profile/view/profile_view.dart'
    deferred as _i6;
import 'package:firstock_stock_list/features/wallet/view/wallet_view.dart'
    deferred as _i5;
import 'package:firstock_stock_list/features/watch_list/view/watch_list.dart'
    deferred as _i2;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.HomeView(),
        ),
      );
    },
    WatchListRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.WatchList(),
        ),
      );
    },
    BookMarkedRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.BookamrkedView(),
        ),
      );
    },
    BussinessRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.BussinessView(),
        ),
      );
    },
    WalletRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.WalletView(),
        ),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.ProfileView(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.WatchList]
class WatchListRouter extends _i7.PageRouteInfo<void> {
  const WatchListRouter({List<_i7.PageRouteInfo>? children})
      : super(
          WatchListRouter.name,
          initialChildren: children,
        );

  static const String name = 'WatchListRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BookamrkedView]
class BookMarkedRouter extends _i7.PageRouteInfo<void> {
  const BookMarkedRouter({List<_i7.PageRouteInfo>? children})
      : super(
          BookMarkedRouter.name,
          initialChildren: children,
        );

  static const String name = 'BookMarkedRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BussinessView]
class BussinessRouter extends _i7.PageRouteInfo<void> {
  const BussinessRouter({List<_i7.PageRouteInfo>? children})
      : super(
          BussinessRouter.name,
          initialChildren: children,
        );

  static const String name = 'BussinessRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.WalletView]
class WalletRouter extends _i7.PageRouteInfo<void> {
  const WalletRouter({List<_i7.PageRouteInfo>? children})
      : super(
          WalletRouter.name,
          initialChildren: children,
        );

  static const String name = 'WalletRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfileView]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
