export 'package:fluttercomponentes/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';
export 'package:fluttercomponentes/screen/listview1_screen.dart';
export 'package:fluttercomponentes/screen/listview2_screen.dart';
export 'package:fluttercomponentes/screen/tabview_screen.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
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
                crossAxisCount: 1,
                //Manejo del numero de columnas

                crossAxisSpacing: 5,
                //Espaciado entre columnas
                mainAxisSpacing: 5,
                //espaciado entre filas
                mainAxisExtent: 150,
                //tamaño o altura de las filas
              ),
              children: [
                Card(
                  margin: EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 30),
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
