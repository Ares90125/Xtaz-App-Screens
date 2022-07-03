import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget MyAppbar() {
  return AppBar(
    backgroundColor: Colors.black54,
    centerTitle: true,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(
            Icons.format_list_bulleted_rounded,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    title: const ImageIcon(
      AssetImage(
        'assets/menu.png',
      ),
      size: 20,
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: Get.width * 0.05),
        child: const Icon(Icons.settings),
      ),
    ],
  );
}
