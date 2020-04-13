import 'package:flutter/cupertino.dart';

class Foods {
  List<Food> foods = new List();

  Future<List<Food>> loadData() {
    return Future.delayed(Duration(seconds: 2), () {
      // print('fin de alma');
      return foods
        ..add(Food(
            title: 'Lomo Saltado',
            description:
                'El lomo saltado es un plato típico de la gastronomía del Perú cuyos registros datan de fines del siglo XIX, donde se le conocía como “lomito de vaca”, “lomito saltado” o “lomito a la chorrillana”.',
            image:
                'https://i.pinimg.com/originals/d3/e8/b7/d3e8b745c30f07e3c5dd975ed778dbf2.jpg'))
        ..add(Food(
            title: 'Ceviche de Pescado',
            description:
                'El cebiche, ceviche, sebiche o seviche es un plato consistente en carne marinada ―pescado, mariscos o ambos― en aliños cítricos.',
            image:
                'https://t2.rg.ltmcdn.com/es/images/7/4/1/ceviche_peruano_18147_600.jpg'))
        ..add(Food(
            title: 'Pollo a la Braza',
            description:
                'Pollo a la brasa es la denominación que se da en el Perú al pollo asado al carbón, a la leña o a gas en un sistema rotatorio',
            image:
                'https://prod.media.wapa.pe/1200x630/wapa/imagen/2019/07/21/noticia-1563717709-pollo-la-brasa-casero-portada-png.png'))
        ..add(Food(
            title: 'Lomo Saltado',
            description:
                'El lomo saltado es un plato típico de la gastronomía del Perú cuyos registros datan de fines del siglo XIX, donde se le conocía como “lomito de vaca”, “lomito saltado” o “lomito a la chorrillana”.',
            image:
                'https://i.pinimg.com/originals/d3/e8/b7/d3e8b745c30f07e3c5dd975ed778dbf2.jpg'))
        ..add(Food(
            title: 'Lomo Saltado',
            description:
                'El lomo saltado es un plato típico de la gastronomía del Perú cuyos registros datan de fines del siglo XIX, donde se le conocía como “lomito de vaca”, “lomito saltado” o “lomito a la chorrillana”.',
            image:
                'https://i.pinimg.com/originals/d3/e8/b7/d3e8b745c30f07e3c5dd975ed778dbf2.jpg'))
        ..add(Food(
            title: 'Lomo Saltado',
            description:
                'El lomo saltado es un plato típico de la gastronomía del Perú cuyos registros datan de fines del siglo XIX, donde se le conocía como “lomito de vaca”, “lomito saltado” o “lomito a la chorrillana”.',
            image:
                'https://i.pinimg.com/originals/d3/e8/b7/d3e8b745c30f07e3c5dd975ed778dbf2.jpg'))
        ..add(Food(
            title: 'Lomo Saltado',
            description:
                'El lomo saltado es un plato típico de la gastronomía del Perú cuyos registros datan de fines del siglo XIX, donde se le conocía como “lomito de vaca”, “lomito saltado” o “lomito a la chorrillana”.',
            image:
                'https://i.pinimg.com/originals/d3/e8/b7/d3e8b745c30f07e3c5dd975ed778dbf2.jpg'))
        ..add(Food(
            title: 'Lomo Saltado',
            description:
                'El lomo saltado es un plato típico de la gastronomía del Perú cuyos registros datan de fines del siglo XIX, donde se le conocía como “lomito de vaca”, “lomito saltado” o “lomito a la chorrillana”.',
            image:
                'https://i.pinimg.com/originals/d3/e8/b7/d3e8b745c30f07e3c5dd975ed778dbf2.jpg'))
        ..add(Food(
            title: 'Lomo Saltado',
            description:
                'El lomo saltado es un plato típico de la gastronomía del Perú cuyos registros datan de fines del siglo XIX, donde se le conocía como “lomito de vaca”, “lomito saltado” o “lomito a la chorrillana”.',
            image:
                'https://i.pinimg.com/originals/d3/e8/b7/d3e8b745c30f07e3c5dd975ed778dbf2.jpg'));
    });
  }
}

class Food {
  String title;
  String description;
  String image;

  Food(
      {@required this.title, @required this.description, @required this.image});

  Food.fromJson() {}
}
