import 'package:flutter/material.dart';
import 'package:trips_app/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/images/chichen.jpg"),
          CardImage("assets/images/queretaro.jpg"),
          CardImage("assets/images/mountain.jpeg"),
          CardImage("assets/images/sumidero.jpg"),
          CardImage("assets/images/mountain_stars.jpeg"),
          CardImage("assets/images/river.jpeg"),
          CardImage("assets/images/sunset.jpeg"),
          CardImage("assets/images/chapultepec.jpg"),
        ],
      ),
    );
  }
}
