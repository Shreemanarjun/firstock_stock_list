import 'package:auto_route/auto_route.dart';
import 'package:firstock_stock_list/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  late final List<AutoRoute> routes = [
    MaterialRoute(
      page: HomeRouter.page,
      initial: true,
      path: '/home',
      children: [
        MaterialRoute(page: WatchListRouter.page, path: 'watchlist'),
        MaterialRoute(page: BookMarkedRouter.page, path: 'bookmark'),
        MaterialRoute(page: BussinessRouter.page, path: 'bussiness'),
        MaterialRoute(page: WalletRouter.page, path: 'wallet'),
        MaterialRoute(page: ProfileRouter.page,path: 'profile'),
      ],
    ),
  ];
}
