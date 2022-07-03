import 'package:get/get.dart';
import 'package:photoediting/screens/navigationbar/newnavigationbar.dart';
import 'package:photoediting/screens/screenone/screenone.dart';
import 'package:photoediting/screens/screentwo/screentwo.dart';

var getPages = [
  GetPage(
    name: "/newnavigationbar",
    page: () => const NewNavigationBaar(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(seconds: 1),
  ),
  GetPage(
    name: "/screenone",
    page: () => const ScreenOne(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(seconds: 1),
  ),
  GetPage(
    name: "/screentwo",
    page: () => const ScreenTwo(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(seconds: 1),
  ),
];
