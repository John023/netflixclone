import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/componentes/carte_principal.dart';
import 'package:netflix_clone/componentes/item_cuadrado.dart';
import 'package:netflix_clone/componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Avances', ItemRedondeado(), 3),
          SizedBox(height: 10.0),
          this.listaHorizontal('Programas sobre viajes', ItemCuadrado(), 7),
          SizedBox(height: 10.0),
          this.listaHorizontal('Tendencias', ItemCuadrado(), 7),
          SizedBox(height: 10.0),
          this.listaHorizontal('Mi lista', ItemCuadrado(), 7),
          SizedBox(height: 20.0)
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Buscar')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          title: Text('Proximamente')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          title: Text('Descargas')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text('Mas')
        ),
      ],
    );
  }

Widget listaHorizontal(String titulo, Widget item, int cantidad) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 10.0),
        child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),
          ),
      ),
      Container(
        height: 110.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cantidad, //Eliminar ésta línea si se desea que sea infinito.
          itemBuilder: (context, index) {
            return item;
          },
        ),
      ),
    ],
  );
}

}