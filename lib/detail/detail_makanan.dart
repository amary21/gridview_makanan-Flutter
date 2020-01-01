import 'package:flutter/material.dart';
import 'definisi_makanan.dart';
import 'bahan_makanan.dart';

class DetailMakanan extends StatelessWidget {
  final String name;
  final String image;
  final String definisi;
  final String bahan;

  const DetailMakanan(
      {Key key, this.name, this.image, this.definisi, this.bahan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("$name"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            child: new Hero(
              tag: name,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("images/$image", fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          new DefinisiMakanan(definisi: definisi),
          new BahanMakanan(bahan: bahan)
        ],
      ),
    );
  }
}
