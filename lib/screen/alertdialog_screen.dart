export 'package:fluttercomponentes/screen/home.dart';
import 'package:flutter/material.dart';
export 'package:fluttercomponentes/screen/listview1_screen.dart';
export 'package:fluttercomponentes/screen/listview2_screen.dart';
export 'package:fluttercomponentes/screen/tabview_screen.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});
  _AlertDialogScreenState createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
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
                  color: Color(0xff117429),
                  child: TextButton(
                    child: Text("Dame Click",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      _showDialog(context);
                    },
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

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Bienvenido'),
            content: Text('Deseas aprender Flutter?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'SIs',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'NOn',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
