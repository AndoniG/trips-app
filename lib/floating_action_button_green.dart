import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen>
    with AutomaticKeepAliveClientMixin {
  bool _favorite = false;

  bool get wantKeepAlive => true;

  void onPressedFav() {
    setState(() {
      _favorite = !this._favorite;
    });
    Scaffold.of(context).showSnackBar(SnackBar(
        content: !this._favorite
            ? Text("Eliminado de favoritos")
            : Text("Agregado a Favorito")));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(this._favorite ? Icons.favorite : Icons.favorite_border),
      onPressed: onPressedFav,
    );
  }
}
