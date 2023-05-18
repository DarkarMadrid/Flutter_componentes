import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  var games = ["Sush", "Cod", "Over", "Pacman", "Spiderman"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View Tipo 1'),
        ),
        body: ListView(
          children: [
            ...games
                .map((games) => ListTile(
                      title: Text(games),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.deepPurple),
                      onTap: () {
                        //var seleccion = games;
                        print(games);
                      },
                    ))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
