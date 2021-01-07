import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/images/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "This is an amazing place";

  // Constructor
  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
        margin: EdgeInsets.only(left: 20),
        child: Text(details,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900)));

    final userInfo = Container(
        margin: EdgeInsets.only(left: 20),
        child: Text(details,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 13, color: Color(0xFFa3a5a7))));

    final userName = Container(
        margin: EdgeInsets.only(left: 20),
        child: Text(name,
            textAlign: TextAlign.left, style: TextStyle(fontSize: 15)));

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    );

    final photo = Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImage))));

    return Row(children: [photo, userDetails]);
  }
}
