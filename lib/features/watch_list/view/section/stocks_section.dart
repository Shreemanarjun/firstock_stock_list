import 'package:firstock_stock_list/features/watch_list/view/widgets/home_stocks_list.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StocksSection extends StatelessWidget {
  final void Function()? onTapSeeAll;
  const StocksSection({Key? key, required this.onTapSeeAll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: <Widget>[
        <Widget>[
          "Stocks".text.bold.lg.make().objectCenterLeft().p8().flexible(),
          "See All"
              .text
              .bold
              .lg
              .blue500
              .make()
              .p8()
              .onInkTap(onTapSeeAll)
              .flexible(),
        ]
            .hStack(
              alignment: MainAxisAlignment.spaceBetween,
              axisSize: MainAxisSize.max,
            )
            .flexible(),
        const HomeStocksList().flexible(),
      ].vStack(),
    );
  }
}
