import 'package:auto_route/auto_route.dart';
import 'package:firstock_stock_list/features/watch_list/view/widgets/home_stocks_list.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StocksSeeAllBottomsheet extends StatelessWidget {
  const StocksSeeAllBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      <Widget>[
        const AutoLeadingButton(),
        "All Stocks".text.xl.extraBold.make().p8(),
      ].hStack().objectTopLeft(),
      const HomeStocksList(
        showAllStocks: true,
      ).expand()
    ].vStack().box.color(Colors.white24).make().p8();
  }
}
