import 'package:flutter/material.dart';
import 'package:restaurant_app/src/models/food_model.dart';
import 'package:restaurant_app/src/prividers/food_provider.dart';
import 'package:restaurant_app/src/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);
  final foodProvider = FoodProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _crearFondo(),
          // _crearAppBar2(),

          Container(
            child: FutureBuilder(
              future: foodProvider.getFoods(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Food>> snapshot) {
                Widget newsListSliver;
                if (snapshot.hasData) {
                  newsListSliver = SliverList(
                      delegate: SliverChildListDelegate(
                          crearTarjetas(snapshot.data, context)));
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return CustomScrollView(
                  slivers: <Widget>[_crearAppBar(), newsListSliver],
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: _crearCustomButtomNavigatorApp(context),
    );
  }

  List<Widget> crearTarjetas(List<Food> foods, BuildContext context) {
    final List<Widget> widgets = List();
    foods.forEach((food) {
      final card = GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('detalle');
          },
          child: Container(
            child: CardWidget(
              title: food.title,
              description: food.description,
              backgroungImage: food.image,
            ),
          ));
      widgets.add(card);
    });
    return widgets;
  }

  Widget _crearAppBar() {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 100.0,
      floating: true,
      snap: true,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 40),
        centerTitle: false,
        title: Text(
          'Discover \r\nRestaurants',
          overflow: TextOverflow.fade,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _crearAppBar2() {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _crearFondo() {
    final fondo = Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(37, 35, 49, 1.0),
    );

    final fondoCircular = Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 1.0),
          end: FractionalOffset(1.0, 0.5),
          colors: [
            Color.fromRGBO(116, 106, 255, 1.0),
            Color.fromRGBO(88, 194, 229, 1.0),
          ],
        ),
        borderRadius: BorderRadius.circular(150),
      ),
    );
    return Stack(
      children: <Widget>[
        fondo,
        Positioned(
          top: -90,
          left: -10,
          child: fondoCircular,
        ),
        // Container(
        //   padding: EdgeInsets.only(left: 40, top: 35),
        //   child: Text(
        //     'Discover \r\nRestaurants',
        //     overflow: TextOverflow.fade,
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 40.0,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget _crearCustomButtomNavigatorApp(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(37, 35, 51, 1.0),
        primaryColor: Color.fromRGBO(116, 106, 255, 1.0),
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))),
      ),
      child: BottomNavigationBar(
        type:  BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_cloudy),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Container(),
          ),
        ],
      ),
    );
  }
}
