import 'dart:convert';

class StockModel {
  final String logoPath;
  final String name;
  final String stockName;
  final double amount;
  final double growthAmount;
  final double growthPercent;

  StockModel({
    required this.logoPath,
    required this.name,
    required this.stockName,
    required this.amount,
    required this.growthAmount,
    required this.growthPercent,
  });

  StockModel copyWith({
    String? logoPath,
    String? name,
    String? stockName,
    double? amount,
    double? growthAmount,
    double? growthPercent,
  }) {
    return StockModel(
      logoPath: logoPath ?? this.logoPath,
      name: name ?? this.name,
      stockName: stockName ?? this.stockName,
      amount: amount ?? this.amount,
      growthAmount: growthAmount ?? this.growthAmount,
      growthPercent: growthPercent ?? this.growthPercent,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'logoPath': logoPath,
      'name': name,
      'stockName': stockName,
      'amount': amount,
      'growthAmount': growthAmount,
      'growthPercent': growthPercent,
    };
  }

  factory StockModel.fromMap(Map<String, dynamic> map) {
    return StockModel(
      logoPath: map['logoPath'] ?? '',
      name: map['name'] ?? '',
      stockName: map['stockName'] ?? '',
      amount: map['amount']?.toDouble() ?? 0.0,
      growthAmount: map['growthAmount']?.toDouble() ?? 0.0,
      growthPercent: map['growthPercent']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory StockModel.fromJson(String source) =>
      StockModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StockModel(logoPath: $logoPath, name: $name, stockName: $stockName, amount: $amount, growthAmount: $growthAmount, growthPercent: $growthPercent)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StockModel &&
        other.logoPath == logoPath &&
        other.name == name &&
        other.stockName == stockName &&
        other.amount == amount &&
        other.growthAmount == growthAmount &&
        other.growthPercent == growthPercent;
  }

  @override
  int get hashCode {
    return logoPath.hashCode ^
        name.hashCode ^
        stockName.hashCode ^
        amount.hashCode ^
        growthAmount.hashCode ^
        growthPercent.hashCode;
  }
}
