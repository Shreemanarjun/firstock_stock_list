import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          Expanded(
            flex: 8,
            child: SearchAnchor.bar(
              isFullScreen: false,
              barElevation: const MaterialStatePropertyAll(2),
              barHintText: 'Search Anything',
              barHintStyle: MaterialStatePropertyAll(
                Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              barTrailing: [
                Container(
                  width: 2,
                  color: Colors.grey,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tune),
                )
              ],
              suggestionsBuilder: (context, controller) {
                return <Widget>[];
              },
              barBackgroundColor: const MaterialStatePropertyAll(Colors.white),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
