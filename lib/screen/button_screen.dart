export 'package:fluttercomponentes/screen/home.dart';
import 'package:flutter/material.dart';
export 'package:fluttercomponentes/screen/listview1_screen.dart';
export 'package:fluttercomponentes/screen/listview2_screen.dart';
export 'package:fluttercomponentes/screen/tabview_screen.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Text",
                icon: Icon(Icons.favorite),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.star)),
            ],
          ),
          title: Text('Text Button'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Color(0xff70c36d),
                  child: TextButton(
                    child: Text("Boton Texto"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Color(0xff8c6dc3),
                  child: TextButton(
                    child: Text("Boton Texto"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Color(0xff8c6dc3),
                  child: OutlinedButton(
                    child: Text("Button"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Color(0xff8c6dc3),
                  child: ElevatedButton(
                    child: Text("Button"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Color(0xff8c6dc3),
                  child: FloatingActionButton(
                    child: Icon(Icons.save),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Color(0xff8c6dc3),
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Color(0xff8c6dc3),
                  child: PopupMenuButton(
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      const PopupMenuItem(
                        child: ListTile(
                          leading: Icon(Icons.add),
                          title: Text('Item 1'),
                        ),
                      ),
                      const PopupMenuItem(
                        child: ListTile(
                          leading: Icon(Icons.anchor),
                          title: Text('Item 2'),
                        ),
                      ),
                      const PopupMenuItem(
                        child: ListTile(
                          leading: Icon(Icons.article),
                          title: Text('Item 3'),
                        ),
                      ),
                      const PopupMenuDivider(),
                      const PopupMenuItem(child: Text('Item A')),
                      const PopupMenuItem(child: Text('Item B')),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/TextButton.jpeg'),
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
