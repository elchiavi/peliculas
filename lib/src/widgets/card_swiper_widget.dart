import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:peliculas/src/models/pelicula_model.dart';


class CardSwiper extends StatelessWidget {


  final List<Pelicula> peliculas;

  CardSwiper({ @required this.peliculas});

  @override
  Widget build(BuildContext context) {

    // configuración para distintos celulares
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 15.0),
       child: Swiper(
        layout: SwiperLayout.STACK,
          itemBuilder: (BuildContext context, int index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                image: NetworkImage( peliculas[index].getPosterImg()),
                placeholder: AssetImage('assets/img/no-image.jpg'),
                fit: BoxFit.cover,
              )
            );
          },
          itemCount: peliculas.length,
          itemWidth: _screenSize.width * 0.7,
          itemHeight: _screenSize.height * 0.5,
      ),
    );
  }
}