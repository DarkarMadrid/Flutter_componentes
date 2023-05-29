export 'package:fluttercomponentes/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';
export 'package:fluttercomponentes/screen/listview1_screen.dart';
export 'package:fluttercomponentes/screen/listview2_screen.dart';
export 'package:fluttercomponentes/screen/tabview_screen.dart';

class GridIconsScreen extends StatefulWidget {
  const GridIconsScreen({super.key});
  _GridIconsScreenState createState() => _GridIconsScreenState();
}

class _GridIconsScreenState extends State<GridIconsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Ejemplo",
                icon: Icon(Icons.favorite),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.star)),
            ],
          ),
          title: Text('TabBar y TabView'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //Controlador del grid
                crossAxisCount: 4,
                //Manejo del numero de columnas
                crossAxisSpacing: 5,
                //Espaciado entre columnas
                mainAxisSpacing: 5,
                //espaciado entre filas
                //tamaño o altura de las filas
              ),
              children: [
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.sec,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/tabview.jpeg'),
                  Text("Aqui se muestra el Codigo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
