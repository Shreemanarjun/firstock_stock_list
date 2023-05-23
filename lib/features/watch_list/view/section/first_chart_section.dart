import 'package:firstock_stock_list/features/watch_list/controller/chart_pods.dart';
import 'package:firstock_stock_list/features/watch_list/view/widgets/first_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:velocity_x/velocity_x.dart';

class FirstChartSection extends StatefulWidget {
  const FirstChartSection({Key? key}) : super(key: key);

  @override
  State<FirstChartSection> createState() => _FirstChartSectionState();
}

class _FirstChartSectionState extends State<FirstChartSection>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer(
          builder: (context, ref, child) {
            final selectedChartData = ref.watch(selectedChartDataPod);
            return <Widget>[
              selectedChartData.name.text.xl3.extraBold.make().flexible(),
              selectedChartData.y
                  .toString()
                  .numCurrency
                  .text
                  .green600
                  .xl3
                  .bold
                  .make()
                  .flexible(),
              "+13.00"
                  .richText
                  .lg
                  .withTextSpanChildren([
                    "(".textSpan.make(),
                    "+0.5 %".textSpan.green600.bold.make(),
                    ")".textSpan.make(),
                  ])
                  .wordSpacing(0)
                  .letterSpacing(0)
                  .semiBold
                  .make()
                  .flexible(),
            ].vStack();
          },
        ).flexible(),
        const FirstChart().p16().expand(),
        Consumer(
          builder: (context, ref, child) {
            return TabBar(
              tabs: DateTimeIntervalType.values.reversed
                  .skip(4)
                  .toList()
                  .reversed
                  .map((e) => Tab(
                        text: e.name == "auto"
                            ? "all".capitalized
                            : e.name.capitalized,
                        iconMargin: EdgeInsets.zero,
                      ))
                  .toList(),
              controller: tabController,
              dividerColor: Colors.transparent,
              onTap: (value) {
                tabController.animateTo(value);
                ref.read(selectedIntervalPod.notifier).update(
                      (state) => DateTimeIntervalType.values[value],
                    );
              },
            );
          },
        ),
      ],
    );
  }
}
