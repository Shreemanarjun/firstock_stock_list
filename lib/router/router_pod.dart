import 'package:firstock_stock_list/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoRouterPod = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter();
});
