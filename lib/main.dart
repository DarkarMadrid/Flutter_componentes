import 'package:flutter/material.dart';

import 'package:fluttercomponentes/router/app_routes.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//Quitamos debug
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.InitialRoute,
      routes: AppRoutes.getAppRoutes(),
      theme: AppTheme.darkTheme,
    );
  }
}
