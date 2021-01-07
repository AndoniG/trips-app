import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final double quantity;
  final Color color;
  final double size;

  Stars(this.quantity, this.size, [this.color]);

  @override
  Widget build(BuildContext context) {
    final List<Container> starList = [];
    double temp = quantity;

    for (double i = 5; i > 0; i--) {
      starList.add(createStar(
        starValue: (temp--),
        starSize: size,
        starColor: color ?? Color(0xFFF2C611),
      ));
    }

    return Container(
        margin: EdgeInsets.only(right: 3, left: 3),
        child: Row(
          children: starList,
        ));
  }
}

Container createStar(
    {double starValue, double starSize = 24, Color starColor}) {
  var starType = starValue >= 1
      ? Icons.star
      : starValue < 0
          ? Icons.star_border
          : Icons.star_half;

  return Container(
      margin: EdgeInsets.only(right: 1, left: 1),
      child: Icon(
        starType,
        color: starColor,
        size: starSize,
      ));
}
