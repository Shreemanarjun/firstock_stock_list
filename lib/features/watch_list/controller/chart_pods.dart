import 'package:firstock_stock_list/data/model/chart_sample_data.dart';
import 'package:firstock_stock_list/data/model/stock_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

final chartDataPod = Provider.autoDispose<List<ChartSampleData>>((ref) {
  return [
    ChartSampleData(x: DateTime(2015, 1, 1), y: 0.0856),
    ChartSampleData(x: DateTime(2015, 1, 2), y: 0.1334),
    ChartSampleData(x: DateTime(2015, 2, 1), y: 0.1432),
    ChartSampleData(x: DateTime(2015, 2, 2), y: 0.1334),
    ChartSampleData(x: DateTime(2015, 2, 3), y: 0.4343),
    ChartSampleData(x: DateTime(2015, 3, 4), y: 0.95435),
    ChartSampleData(x: DateTime(2015, 3, 5), y: 1.143523),
    ChartSampleData(x: DateTime(2015, 4, 6), y: 0.99),
    ChartSampleData(x: DateTime(2015, 4, 7), y: 1.1),
    ChartSampleData(x: DateTime(2015, 5, 8), y: 1.3),
    ChartSampleData(x: DateTime(2015, 6, 9), y: 1.7),
    ChartSampleData(x: DateTime(2015, 7, 10), y: 1.2),
    ChartSampleData(x: DateTime(2015, 8, 8), y: 1.3),
    ChartSampleData(x: DateTime(2015, 9, 9), y: 1.4),
    ChartSampleData(x: DateTime(2015, 10, 10), y: 1.2),
    ChartSampleData(x: DateTime(2015, 11, 8), y: 1.1),
    ChartSampleData(x: DateTime(2015, 11, 16), y: 1.066),
    ChartSampleData(x: DateTime(2015, 12, 9), y: 1.033),
    ChartSampleData(x: DateTime(2015, 12, 10), y: 0.6),
  ];
});

final selectedChartDataPod = StateProvider.autoDispose<ChartSampleData>(
    (ref) => throw UnimplementedError("Please overrider"));

final selectedIntervalPod =
    StateProvider.autoDispose<DateTimeIntervalType>((ref) {
  return DateTimeIntervalType.days;
});

final allStocksPod = Provider<List<StockModel>>((ref) {
  return [
    StockModel(
      logoPath:
          "https://companieslogo.com/img/orig/AXISBANK.BO-8f59e95b.png?t=1672905040&download=true",
      name: "AXISBANK",
      stockName: "NSE",
      amount: 2126.20,
      growthAmount: 30.00,
      growthPercent: 0.72,
    ),
    StockModel(
      logoPath:
          "https://companieslogo.com/img/orig/YESBANK.NS_BIG-e4bb4b2a.png?t=1603312763&download=true",
      name: "YESBANK",
      stockName: "NSE",
      amount: -245.20,
      growthAmount: -15.00,
      growthPercent: -1.00,
    ),
    StockModel(
      logoPath:
          "https://companieslogo.com/img/orig/HDB-bb6241fe.png?t=1633497370&download=true",
      name: "HDFCBANK",
      stockName: "BSE",
      amount: 1085.00,
      growthAmount: 45.00,
      growthPercent: 0.01,
    ),
    StockModel(
      logoPath:
          "https://1000logos.net/wp-content/uploads/2022/02/Parle-Logo.png",
      name: "PARLE",
      stockName: "NSE",
      amount: 245.00,
      growthAmount: 15.00,
      growthPercent: -1.00,
    ),
    StockModel(
      logoPath:
          "https://companieslogo.com/img/orig/RELIANCE.NS-bb9f8a1b.png?t=1633628819&download=true",
      name: "RELIANCE",
      stockName: "NSE",
      amount: 2510.20,
      growthAmount: 15.00,
      growthPercent: -1.00,
    ),
    StockModel(
      logoPath:
          "https://companieslogo.com/img/orig/SUNPHARMA.NS-b721761b.png?t=1599629135&download=true",
      name: "SUNPHARMA",
      stockName: "NSE",
      amount: 252.02,
      growthAmount: -45.10,
      growthPercent: -2.48,
    ),
    StockModel(
      logoPath:
          "https://companieslogo.com/img/orig/HDB-bb6241fe.png?t=1633497370&download=true",
      name: "HDFCBANK",
      stockName: "NSE",
      amount: 2510.20,
      growthAmount: 15.85,
      growthPercent: 1.00,
    ),
    StockModel(
      logoPath:
          "https://companieslogo.com/img/orig/IBN_BIG-9ec25662.png?t=1648383607&download=true",
      name: "ICICI",
      stockName: "NSE",
      amount: 451.20,
      growthAmount: 59.20,
      growthPercent: 2.50,
    ),
  ];
});

const String uprightLogoPath =
    "https://img.icons8.com/ios/50/40C057/circled-up-right-2.png";

const String downLeftLogoPath =
    "https://img.icons8.com/ios/50/FA5252/circled-down-right.png";

final activeStockPod = Provider<List<StockModel>>((ref) {
  return [
    StockModel(
      logoPath: uprightLogoPath,
      name: "AXISBANK",
      stockName: "NSE",
      amount: 2126.20,
      growthAmount: 30.00,
      growthPercent: 0.72,
    ),
    StockModel(
      logoPath: downLeftLogoPath,
      name: "YESBANK",
      stockName: "NSE",
      amount: -245.20,
      growthAmount: -15.00,
      growthPercent: -1.00,
    ),
    StockModel(
      logoPath: uprightLogoPath,
      name: "HDFCBANK",
      stockName: "BSE",
      amount: 1085.00,
      growthAmount: 45.00,
      growthPercent: 0.01,
    ),
    StockModel(
      logoPath: downLeftLogoPath,
      name: "PARLE",
      stockName: "NSE",
      amount: 245.00,
      growthAmount: 15.00,
      growthPercent: -1.00,
    ),
    StockModel(
      logoPath: downLeftLogoPath,
      name: "RELIANCE",
      stockName: "NSE",
      amount: 2510.20,
      growthAmount: 15.00,
      growthPercent: -1.00,
    ),
    StockModel(
      logoPath: uprightLogoPath,
      name: "SUNPHARMA",
      stockName: "NSE",
      amount: 252.02,
      growthAmount: -45.10,
      growthPercent: -2.48,
    ),
    StockModel(
      logoPath: uprightLogoPath,
      name: "HDFCBANK",
      stockName: "NSE",
      amount: 2510.20,
      growthAmount: 15.85,
      growthPercent: 1.00,
    ),
    StockModel(
      logoPath: uprightLogoPath,
      name: "ICICI",
      stockName: "NSE",
      amount: 451.20,
      growthAmount: 59.20,
      growthPercent: 2.50,
    ),
  ];
});
