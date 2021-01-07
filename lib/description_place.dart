import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String placeName;
  int stars;
  String description;

  // Contructor
  DescriptionPlace(this.placeName, this.stars, this.description);

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
        margin: EdgeInsets.only(
          right: 3,
        ),
        child: Icon(Icons.star_half, color: Color(0xFFf2C611)));

    final starBorder = Container(
        margin: EdgeInsets.only(
          right: 3,
        ),
        child: Icon(Icons.star_border, color: Color(0xFFf2C611)));

    final star = Container(
        margin: EdgeInsets.only(
          right: 3,
        ),
        child: Icon(Icons.star, color: Color(0xFFf2C611)));

    final descriptionWidget = Container(
        margin: EdgeInsets.only(top: 3),
        child: Text(description,
            style: TextStyle(fontSize: 12, color: Color(0xFF56575a))));

    final titleStars = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 320),
        child: Text(
          placeName,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          textAlign: TextAlign.left,
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 328, left: 5),
          child: Row(
            children: [star, star, star, starHalf, starBorder],
          ))
    ]);

    final descriptionPlace = Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [titleStars, descriptionWidget],
        ));

    return SingleChildScrollView(
      child: descriptionPlace,
      scrollDirection: Axis.vertical,
    );
    ;
  }
}
