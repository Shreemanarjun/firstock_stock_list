import 'package:auto_route/auto_route.dart';
import 'package:firstock_stock_list/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:firstock_stock_list/features/watch_list/view/widgets/app_bar.dart';

@RoutePage(
  name: 'HomeRouter',
  deferredLoading: true,
)
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) => const CustomAppBar(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          onDestinationSelected: tabsRouter.setActiveIndex,
          selectedIndex: tabsRouter.activeIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.bookmark), label: 'WarchList'),
            NavigationDestination(icon: Icon(Icons.book), label: 'Saved'),
            NavigationDestination(icon: Icon(Icons.work), label: 'All'),
            NavigationDestination(icon: Icon(Icons.wallet), label: 'Wallet'),
            NavigationDestination(
              icon: Icon(Icons.account_circle),
              label: 'User',
            ),
          ],
        );
      },
      routes: const [
        WatchListRouter(),
        BookMarkedRouter(),
        BussinessRouter(),
        WalletRouter(),
        ProfileRouter(),
      ],
    );
  }
}
