import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'BussinessRouter',
  deferredLoading: true,
)
class BussinessView extends StatelessWidget {
  const BussinessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return "Bussiness".text.lg.bold.make().objectCenter();
  }
}
