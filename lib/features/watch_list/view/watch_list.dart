import 'package:auto_route/auto_route.dart';
import 'package:firstock_stock_list/features/watch_list/controller/chart_pods.dart';
import 'package:firstock_stock_list/features/watch_list/view/section/active_stocks_section.dart';
import 'package:firstock_stock_list/features/watch_list/view/section/first_chart_section.dart';
import 'package:firstock_stock_list/features/watch_list/view/section/stocks_section.dart';
import 'package:firstock_stock_list/features/watch_list/view/widgets/stocks_see_all_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'WatchListRouter',
  deferredLoading: true,
)
class WatchList extends StatefulWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  Future<void> onStocksSeeAllPressed() async {
    showModalBottomSheet(
        context: context,
        builder: (context) => const StocksSeeAllBottomsheet(),
        constraints: const BoxConstraints(
          minWidth: 600,
          maxHeight: 800,
        ),
        useSafeArea: true,
        isDismissible: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32))));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox.fromSize(
              size: const Size.fromHeight(300),
              child: ProviderScope(
                overrides: [
                  selectedChartDataPod
                      .overrideWith((ref) => ref.watch(chartDataPod)[0])
                ],
                child: const FirstChartSection(),
              ),
            ).py8(),
            StocksSection(onTapSeeAll: onStocksSeeAllPressed),
            SizedBox.fromSize(
              size: const Size.fromHeight(300),
              child: ProviderScope(
                overrides: [
                  allStocksPod.overrideWith((ref) => ref.watch(activeStockPod))
                ],
                child: const ActiveStocksSection(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
