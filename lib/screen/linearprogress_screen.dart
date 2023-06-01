import 'package:flutter/material.dart';

class LinearProgressScreen extends StatefulWidget {
  const LinearProgressScreen({super.key});
  _LinearProgressScreenState createState() => _LinearProgressScreenState();
}

class _LinearProgressScreenState extends State<LinearProgressScreen> {
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
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xff5fffcb)),
                      value: 0.4,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xff22ffb6)),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.6,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xff22ff47)),
                      backgroundColor: Colors.grey,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.7,
                      backgroundColor: Colors.grey,
                      color: Color(0xff27b050),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.8,
                      backgroundColor: Colors.grey,
                      color: Color(0xff15822c),
                      minHeight: 10,
                    )),
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
