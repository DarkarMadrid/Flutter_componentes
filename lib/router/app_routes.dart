import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screen/screens.dart';

class AppRoutes {
  static const InitialRoute = "home";

  static final menuOption = <MenuOption>[
    MenuOption(
        route: "listview1",
        icon: Icons.remove,
        name: "List View 1",
        screen: ListView1Screen())
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
