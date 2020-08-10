import 'package:flutter/material.dart';

class ItemCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.topStart,
          // alignment: AlignmentDirectional.bottomCenter,

          children: <Widget>[
            Image.network(
              'https://comoacaba.com/wp-content/uploads/2019/05/38d32uG1x7iiN2jdK0cRX0Bk423.jpg',
              width: 100.0,
              fit: BoxFit.cover
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.2, vertical: 3.5),
              child: Image.asset(
                'assets/imgs/logo_netflix.png',
                width: 30.0,
                height: 30.0,
              ),
            ),
            // FlatButton(
            //   onPressed: () {},
            //   color: Colors.red,
            //   child: Text(
            //     "Tendencias",
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
          ],
        ),
        SizedBox(width: 10.0)
      ],
    );
  }
}

// class ItemCuadrado2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Image.network(
//       'https://comoacaba.com/wp-content/uploads/2019/05/38d32uG1x7iiN2jdK0cRX0Bk423.jpg',
//       width: 100.0,
//     );
//   }
// }