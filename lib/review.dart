import 'package:flutter/material.dart';
import 'stars.dart';

class Review extends StatelessWidget {
  String pathImage = "";
  String name = "";
  String details = "";
  String comment = "";
  double stars;

  // Constructor
  Review(this.pathImage, this.name, this.details, this.comment, this.stars);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
        margin: EdgeInsets.only(left: 20),
        child: Text(comment,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13,
            )));

    final userInfo = Container(
        margin: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text(details,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10, color: Color(0xFFa3a5a7))),
            new Stars(stars, 16)
          ],
        ));

    final userName = Container(
        margin: EdgeInsets.only(left: 20),
        child: Text(name,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900)));

    final userDetails = Flexible(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    ));

    final photo = Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImage))));

    return Row(children: [photo, userDetails]);
  }
}
