import 'package:flutter/material.dart';
import 'package:netflix_clone/componentes/navbar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'http://staticuestudio.blob.core.windows.net/buhomag/2018/10/Cartel-de-Elite-en-Netflix-1.jpg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color> [
                Colors.black38,
                Colors.black
              ]
            )
          ),
        ),
        SafeArea(
          child: NavBarSuperior(),
        ),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 11.0),
        ),
        SizedBox(width: 7.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 7.0),
        Text(
          'Suspenso insostenible',
          style: TextStyle(color: Colors.white, fontSize: 11.0),
        ),
        SizedBox(width: 7.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 7.0),
        Text(
          'De suspenso',
          style: TextStyle(color: Colors.white, fontSize: 11.0),
        ),
        SizedBox(width: 7.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 7.0),
        Text(
          'Adolescentes',
          style: TextStyle(color: Colors.white, fontSize: 11.0),
        ),
      ],
    );
  }

  Widget botonera() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 15.0),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.check, color: Colors.white),
            SizedBox(height: 3.0),
            Text(
              'Mi lista',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.0,
              ),
            )
          ],
        ),
        FlatButton.icon(
          onPressed: (){},
          color: Colors.white,
          icon: Icon(Icons.play_arrow, color: Colors.black),
          label: Text('Reproducir', style: TextStyle(fontSize: 15.0),),
        ),
        Column(
          children: <Widget>[
            Icon(Icons.info_outline, color: Colors.white),
            SizedBox(height: 3.0),
            Text(
              'Información',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.0,
              ),
            )
          ],
        )
      ],
    )
  );
}

}