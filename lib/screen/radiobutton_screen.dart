import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});
  _RadioButtonScreenState createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  bool _value = false;
  int val = 1;
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
          title: Text('Radio Button'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                ListTile(
                  title: Text("Masculino"),
                  leading: Radio(
                    value: 1,
                    groupValue: val,
                    onChanged: (int? value) {
                      setState(() {
                        val = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("Femenino"),
                  leading: Radio(
                    value: 2,
                    groupValue: val,
                    onChanged: (int? value) {
                      setState(() {
                        val = value!;
                      });
                    },
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
