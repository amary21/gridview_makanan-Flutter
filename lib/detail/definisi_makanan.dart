import 'package:flutter/material.dart';

class DefinisiMakanan extends StatelessWidget {
  final String definisi;

  const DefinisiMakanan({Key key, this.definisi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(definisi,
                style: new TextStyle(fontSize: 18.0),
                textAlign: TextAlign.justify)),
      ),
    );
  }
}
