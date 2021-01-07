import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  int number;
  Color starColor = Color(0xFFF2C611);
  double size;

  Stars(this.number, this.starColor, this.size);

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
        margin: EdgeInsets.only(
          right: 3,
        ),
        child: Icon(Icons.star_half, color: starColor));

    final starBorder = Container(
        margin: EdgeInsets.only(
          right: 3,
        ),
        child: Icon(Icons.star_border, color: starColor));

    final star = Container(
        margin: EdgeInsets.only(
          right: 3,
        ),
        child: Icon(Icons.star, color: starColor));

    return Container();
  }
}
