import 'package:cached_network_image/cached_network_image.dart';
import 'package:firstock_stock_list/data/model/stock_model.dart';
import 'package:firstock_stock_list/features/watch_list/view/widgets/spline_area_chart_body.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StockListTile extends StatelessWidget {
  final StockModel stock;
  final bool isEven;
  const StockListTile({Key? key, required this.stock, required this.isEven})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //isThreeLine: true,
      dense: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      tileColor: Colors.blueGrey.shade200,
      leading: CachedNetworkImage(
        imageUrl: stock.logoPath,
        height: 24,
        width: 24,
      ),
      title: <Widget>[
        <Widget>[stock.name.text.bold.make(), stock.stockName.text.light.make()]
            .vStack(
              crossAlignment: CrossAxisAlignment.start,
            )
            .flexible(),
        SizedBox(
          height: 50,
          child: SplineAreaChartBody(
            isEven: isEven,
          ),
        ).px16().expand(),
      ].hStack(),
      trailing: [
        stock.amount.text
            .color(
              stock.amount.isPositive ? Vx.green400 : Vx.red400,
            )
            .bold
            .lg
            .make(),
        "${stock.growthAmount.isPositive ? "+" : ""}${stock.growthAmount}"
            .richText
            .semiBold
            .withTextSpanChildren([
          "(".textSpan.make(),
          "${stock.growthPercent.isPositive ? "+" : "-"}0.5 %"
              .textSpan
              .color(
                stock.growthPercent.isPositive ? Vx.green400 : Vx.red400,
              )
              .semiBold
              .make(),
          ")".textSpan.make(),
        ]).make()
      ].vStack(
        alignment: MainAxisAlignment.end,
        crossAlignment: CrossAxisAlignment.end,
      ),
    );
  }
}
