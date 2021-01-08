import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Review("assets/images/people.jpg", "Andoni G", "1 review 4 photos",
            "Amazing place!", 5),
        Review("assets/images/ann.jpg", "Monica O", "7 review 2 photos",
            "Nice place!", 4.5),
        Review("assets/images/guy.jpg", "Carlos D", "3 review 15 photos",
            "Cool place!", 2.5),
      ],
    );
  }
}
