import 'package:firstock_stock_list/data/model/chart_sample_data.dart';
import 'package:firstock_stock_list/features/watch_list/controller/chart_pods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:velocity_x/velocity_x.dart';

class FirstChart extends ConsumerStatefulWidget {
  const FirstChart({super.key});

  @override
  ConsumerState<FirstChart> createState() => _FirstChartState();
}

class _FirstChartState extends ConsumerState<FirstChart> {
  /// Returns the list of chart series which need to render on the spline chart.
  List<SplineSeries<ChartSampleData, DateTime>> _getDefaultSplineSeries() {
    return <SplineSeries<ChartSampleData, DateTime>>[
      SplineSeries<ChartSampleData, DateTime>(
        dataSource: ref.watch(chartDataPod),
        xValueMapper: (ChartSampleData sales, _) => sales.x,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
      ),
    ];
  }

  TooltipBehavior _toolTipBehaviour() {
    return TooltipBehavior(
      elevation: 0,
      opacity: 0,
      enable: true,
      builder: (data, point, series, pointIndex, seriesIndex) {
        return Container(
            width: 120,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '₹ ${(data as ChartSampleData).y.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ).flexible(),
                Text(
                  (data).x.toString().split(" ").first.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ).flexible(),
              ],
            ));
      },
    );
  }

  TrackballBehavior _trackBallBehaviour() {
    return TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      lineType: TrackballLineType.none,
      lineWidth: 0,
      tooltipDisplayMode: TrackballDisplayMode.none,
      tooltipSettings: const InteractiveTooltip(
        enable: false,
        canShowMarker: false,
      ),
      shouldAlwaysShow: true,
      tooltipAlignment: ChartAlignment.near,
      builder: (context, trackballDetails) {
        return const SizedBox.shrink();
      },
      markerSettings: TrackballMarkerSettings(
        markerVisibility: TrackballVisibilityMode.visible,
        shape: DataMarkerType.circle,
        color: Colors.blue,
        borderColor: Colors.blueAccent.withOpacity(0.2),
        borderWidth: 8,
        height: 10,
        width: 10,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      trackballBehavior: _trackBallBehaviour(),
      tooltipBehavior: _toolTipBehaviour(),
      enableAxisAnimation: true,
      onTrackballPositionChanging: (TrackballArgs args) {
        final selectedDataPoint = args.chartPointInfo.dataPointIndex;
        if (selectedDataPoint != null) {
          ref
              .read(selectedChartDataPod.notifier)
              .update((state) => ref.read(chartDataPod)[selectedDataPoint]);
        }
      },
      plotAreaBorderWidth: 0,
      legend: Legend(isVisible: false),
      primaryXAxis: DateTimeAxis(
        majorGridLines: const MajorGridLines(width: 2),
        isVisible: false,
        intervalType: ref.watch(selectedIntervalPod),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0.0,
        maximum: 3.0,
        interval: 0.5,
        isVisible: false,
        axisLine: const AxisLine(width: 0),
        minorTicksPerInterval: 0,
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        labelFormat: '{value}',
        majorTickLines: const MajorTickLines(size: 0),
      ),
      series: _getDefaultSplineSeries(),
    );
  }
}
