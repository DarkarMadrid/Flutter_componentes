export 'package:fluttercomponentes/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';
export 'package:fluttercomponentes/screen/listview1_screen.dart';
export 'package:fluttercomponentes/screen/listview2_screen.dart';
export 'package:fluttercomponentes/screen/tabview_screen.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
          title: Text('Card'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              children: <Widget>[
                //Cardsss
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Coloreado",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.green,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Elevado",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 8,
                    color: AppTheme.primary,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Color de sombra",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 8,
                    color: AppTheme.primary,
                    shadowColor: AppTheme.text,
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Color de sombra",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 8,
                    color: AppTheme.primary,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Color de sombra",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 8,
                    color: AppTheme.primary,
                    shadowColor: AppTheme.text,
                    margin: EdgeInsets.all(20),
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child: ListTile(
                      title: Text("Codesinsider.com"),
                    ),
                    elevation: 8,
                    shadowColor: AppTheme.text,
                    color: AppTheme.primary,
                    margin: EdgeInsets.all(20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Elevado",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    elevation: 8,
                    color: AppTheme.primary,
                    shadowColor: Colors.green,
                    margin: EdgeInsets.all(20),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                      height: 160,
                      width: 160,
                      child: Center(
                        child: ListTile(
                          title: Text("Circular"),
                        ),
                      ),
                    ),
                    elevation: 8,
                    shadowColor: AppTheme.text,
                    color: AppTheme.primary,
                    margin: EdgeInsets.all(20),
                    shape: CircleBorder(
                      side: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                      height: 100,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Expanded(
                                child: Image.asset("assets/TextButton.jpeg"),
                                flex: 2,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: ListTile(
                                      title: Text("Shape Of You"),
                                      subtitle: Text("Ed Sheeran"),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          child: Text("PLAY"),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        TextButton(
                                          child: Text("ADD TO QUEUE"),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 8,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            flex: 8,
                          ),
                        ],
                      ),
                    ),
                    elevation: 8,
                    margin: EdgeInsets.all(10),
                  ),
                )
              ], //
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
