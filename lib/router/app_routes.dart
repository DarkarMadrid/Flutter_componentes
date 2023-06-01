import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screen/screens.dart';
import 'package:fluttercomponentes/screen/tabview_screen.dart';
import 'package:fluttercomponentes/screen/button_screen.dart';
import 'package:fluttercomponentes/screen/alertdialog_screen.dart';
import 'package:fluttercomponentes/screen/card_screen.dart';
import 'package:fluttercomponentes/screen/linearprogress_screen.dart';
import 'package:fluttercomponentes/screen/slider_screen.dart';

class AppRoutes {
  static const InitialRoute = "home";

  static final menuOption = <MenuOption>[
    MenuOption(
        route: "listview1",
        icon: Icons.remove,
        name: "List View 1",
        screen: ListView1Screen()),
    MenuOption(
        route: "listview2",
        icon: Icons.remove,
        name: "List View 2",
        screen: ListView2Screen()),
    MenuOption(
        route: "tabview",
        icon: Icons.remove,
        name: "TabBar y TabView",
        screen: const TabScreen()),
    MenuOption(
        route: "Buttonview",
        icon: Icons.remove,
        name: "Button",
        screen: const ButtonScreen()),
    MenuOption(
        route: "Alertview",
        icon: Icons.remove,
        name: "Alert Dialog",
        screen: const AlertDialogScreen()),
    MenuOption(
        route: "Cardview",
        icon: Icons.remove,
        name: "Card",
        screen: const CardScreen()),
    MenuOption(
        route: "Gridview",
        icon: Icons.remove,
        name: "Grid",
        screen: const GridScreen()),
    MenuOption(
        route: "Gridiconosview",
        icon: Icons.remove,
        name: "Grid Iconos",
        screen: const GridIconsScreen()),
    MenuOption(
        route: "Linearprogressview",
        icon: Icons.remove,
        name: "Linear Progress",
        screen: const LinearProgressScreen()),
    MenuOption(
        route: "Sliderview",
        icon: Icons.remove,
        name: "Slider",
        screen: const SliderScreen()),
    MenuOption(
        route: "Chechboxview",
        icon: Icons.remove,
        name: "Check Box",
        screen: const CheckBoxScreen()),
    MenuOption(
        route: "Radiobuttonview",
        icon: Icons.remove,
        name: "Radio Boton",
        screen: const RadioButtonScreen()),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //Creamos lista Map Para guardar las rutas actuales del proyecto
    //asignamos la ruta home
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    //Ciclo para recorrer todas las pantallas
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
