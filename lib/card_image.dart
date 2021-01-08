import 'package:flutter/material.dart';
import 'package:trips_app/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String path = "assets/images/beach.jpg";

  CardImage(this.path);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 330,
      width: 250,
      margin: EdgeInsets.only(top: 80, left: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
          ],
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(path))),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [card, FloatingActionButtonGreen()],
    );
  }
}
