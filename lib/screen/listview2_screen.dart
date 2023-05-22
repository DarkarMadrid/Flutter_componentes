import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  var games = ["Que", "Onda", "Master"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
          //Obtener el tamaño de mi lista
          itemCount: games.length,
          //Se guarda el valor correspondiente de la lista en Index
          itemBuilder: (context, index) => ListTile(
            //Asiganos el titulo a partir de mi lista
            title: Text(games[index]),
            //Asignamos un icono a cada elemento de mi lista
            trailing:
                Icon(Icons.arrow_forward_ios, color: Colors.deepPurpleAccent),
            onTap: () {
              var seleccion = games[index];
              print(seleccion);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
