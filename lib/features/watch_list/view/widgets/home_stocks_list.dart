import 'package:firstock_stock_list/features/watch_list/controller/chart_pods.dart';
import 'package:firstock_stock_list/features/watch_list/view/widgets/stock_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeStocksList extends StatelessWidget {
  const HomeStocksList({
    super.key,
    this.showAllStocks = false,
  });
  final bool showAllStocks;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final allStocks = ref.watch(allStocksPod);
        return ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemCount: showAllStocks
              ? allStocks.length
              : allStocks.length > 3
                  ? 3
                  : allStocks.length,
          separatorBuilder: (context, index) => 8.heightBox,
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          itemBuilder: (context, index) {
            final stock = allStocks[index];
            return StockListTile(
              stock: stock,
              isEven: stock.amount.isPositive,
            );
          },
        );
      },
    );
  }
}
