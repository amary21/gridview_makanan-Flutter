import 'package:flutter/material.dart';

class BahanMakanan extends StatelessWidget {
  final String bahan;

  const BahanMakanan({Key key, this.bahan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "Bahan - bahan \n\n$bahan",
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
