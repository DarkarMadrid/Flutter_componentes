export 'package:fluttercomponentes/screen/home.dart';
import 'package:flutter/material.dart';
export 'package:fluttercomponentes/screen/listview1_screen.dart';
export 'package:fluttercomponentes/screen/listview2_screen.dart';
export 'package:fluttercomponentes/screen/tabview_screen.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  bool _value = false;
  double val = 1;
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
                    height: 100,
                    child: Slider(
                      value: val,
                      thumbColor: Color(0xff5fffcb),
                      activeColor: Color(0xff24d99d),
                      secondaryActiveColor: Color(0xff007950),
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    )),
                Container(
                    height: 100,
                    child: Slider(
                      min: 0.1,
                      max: 1,
                      value: val,
                      thumbColor: Color(0xff5fffcb),
                      activeColor: Color(0xff24d99d),
                      secondaryActiveColor: Color(0xff007950),
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    )),
                Container(
                    height: 100,
                    child: Slider(
                      divisions: 10,
                      value: val,
                      thumbColor: Color(0xff5fffcb),
                      activeColor: Color(0xff24d99d),
                      secondaryActiveColor: Color(0xff007950),
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    )),
                Container(
                    height: 100,
                    child: Slider(
                      divisions: 10,
                      label: val.round().toString(),
                      value: val,
                      thumbColor: Color(0xff5fffcb),
                      activeColor: Color(0xff24d99d),
                      secondaryActiveColor: Color(0xff007950),
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
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
