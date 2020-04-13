import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  String title;
  String backgroungImage; 
  String description;
  
  CardWidget({this.title, this.backgroungImage, this.description});

  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;
    return Stack(children: <Widget>[
      Center(        
        child: Container(
          // decoration: BoxDecoration(color: Colors.red),
          margin: EdgeInsets.only(bottom: 10.0,),
          width: _sizeScreen.width - 50,
          padding: EdgeInsets.all(10.0),
          child: Card(
            
            color: Colors.transparent,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    _fondoImagen(),
                    _crearTextos(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),  
    ]);
  }

  Widget _fondoImagen() {
    return Image(
      width: 500,
      height: 300,
      image: NetworkImage(
         backgroungImage),
      fit: BoxFit.cover,
    );
  }

  Widget _crearTextos() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(37, 35, 49, 1.0),
            Colors.transparent,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.store,
                    color: Color.fromRGBO(132, 129, 146, 1.0),
                  ),
                  backgroundColor: Color.fromRGBO(82, 79, 94, 1.0),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '4.0',
                          style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Text(
                          '(100)',
                          style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Icon(Icons.star,
                            size: 10.0, color: Colors.orangeAccent),
                        Icon(Icons.star,
                            size: 10.0, color: Colors.orangeAccent),
                        Icon(Icons.star,
                            size: 10.0, color: Colors.orangeAccent),
                        Icon(
                          Icons.star,
                          size: 10.0,
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(child: Container()),
                CircleAvatar(
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, top: 10.0),
              child: Text(
                description,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
