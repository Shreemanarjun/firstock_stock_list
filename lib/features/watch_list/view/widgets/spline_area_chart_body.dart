
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SplineAreaChartBody extends StatelessWidget {
  const SplineAreaChartBody({Key? key, required this.isEven}) : super(key: key);
  final bool isEven;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      series: <ChartSeries>[
        SplineAreaSeries<ChartData, int>(
          dataSource: isEven ? chartDataEven : chartDataOdd,
          borderColor: const Color.fromRGBO(75, 135, 185, 1),
          gradient: LinearGradient(colors: [
            isEven ? Colors.blue.shade600 : Colors.red.shade600,
            isEven ? Colors.blueAccent : Colors.redAccent,
            Colors.white60,
          ]),
          splineType: SplineType.monotonic,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        ),
      ],
      primaryXAxis: NumericAxis(
        isVisible: false,
        interval: 1,
        majorGridLines: const MajorGridLines(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      primaryYAxis: NumericAxis(
        isVisible: false,
        labelFormat: '{value}%',
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
      ),
      plotAreaBorderWidth: 0,
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }
}

final List<ChartData> chartDataEven = <ChartData>[
  ChartData(2010, 0.53),
  ChartData(2011, 9.5),
  ChartData(2012, 10),
  ChartData(2013, 9.4),
  ChartData(2014, 5.8),
  ChartData(2015, 4.9),
  ChartData(2016, 4.5),
  ChartData(2017, 3.6),
  ChartData(2018, 3.43),
];

final List<ChartData> chartDataOdd = <ChartData>[
  ChartData(2010, 12.53),
  ChartData(2011, 10.7),
  ChartData(2012, 3),
  ChartData(2013, 11),
  ChartData(2014, 8),
  ChartData(2015, 7),
  ChartData(2016, 6),
  ChartData(2017, 5),
  ChartData(2018, 3.43),
];

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}
