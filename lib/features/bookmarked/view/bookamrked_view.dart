import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'BookMarkedRouter',
  deferredLoading: true,
)
class BookamrkedView extends StatelessWidget {
  const BookamrkedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return "Bookmarked".text.lg.bold.make().objectCenter();
  }
}
