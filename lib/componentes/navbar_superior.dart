import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: <Widget>[
        Image.asset(
          'assets/imgs/logo_netflix.png',
          width: 40.0,
        ),
        Text(
          'Programas',
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
        Text(
          'Peliculas',
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
        Text(
          'Mi lista',
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ],
    );
  }
}