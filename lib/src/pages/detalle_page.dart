import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  final textStyleSubtitle1 =
      TextStyle(fontSize: 12.0, color: Color.fromRGBO(116, 117, 152, 1.0));
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(37, 35, 49, 1.0),
            ),
          ),
          _fotoBanner(_screenSize),
          _crearCardDescripcion(_screenSize),
        ],
      ),
    );
  }

  Widget _fotoBanner(Size screenSize) {
    return Container(
      width: double.infinity,
      height: screenSize.height * 0.5,
      child: Image(
        image: NetworkImage(
          'https://i.pinimg.com/originals/d3/e8/b7/d3e8b745c30f07e3c5dd975ed778dbf2.jpg',
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearCardDescripcion(Size screenSize) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: screenSize.height * 0.6,
        width: screenSize.width * 0.8,
        decoration: BoxDecoration(
            color: Color.fromRGBO(54, 52, 73, 1.0),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))
            // color: Colors.red
            ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pickle, jam \r\nand Chutney',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  CircleAvatar(
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Text(
                'I love how flat design get in design world but gradients look fancy and are must-have. Gradient usage in mobile app design is popular. Flutter makes it easy to paint gradient decoration in to your mobile app even animating a gradient is so easy. Lets dive in to code.',
                style: textStyleSubtitle1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _crearAvatar(Icons.alarm, Colors.blue, '10am-10pm'),
                  _crearAvatar(Icons.gps_fixed, Colors.lightBlue, '1.5km'),
                  _crearAvatar(Icons.map, Colors.orange, 'Map View'),
                  _crearAvatar(Icons.drive_eta, Colors.lightGreen, 'Delivery'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearAvatar(IconData icono, Color color, String texto) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            icono,
            color: color,
          ),
          backgroundColor: Color.fromRGBO(82, 79, 94, 1.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(texto, style: textStyleSubtitle1)
      ],
    );
  }
}
