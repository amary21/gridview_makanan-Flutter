import 'package:flutter/material.dart';
import '../detail/detail_makanan.dart';
import '../data/breakfast.dart';

const PrimaryColor = const Color(0xFFFF0D86);

class BreakfastFood extends StatefulWidget {
  @override
  _BreakfastFoodState createState() => _BreakfastFoodState();
}

class _BreakfastFoodState extends State<BreakfastFood> {
  get makanan => Breakfast().makanan;
  List<Container> daftarMakanan = new List();

  _listMakanan() async {
    for (var i = 0; i < makanan.length; i++) {
      final item = makanan[i];
      final String name = item["name"];
      final String image = item["image"];
      final String definisi = item["definisi"];
      final String bahan = item["bahan"];

      daftarMakanan.add(Container(
          child: Card(
              child: Column(
        children: <Widget>[
          Hero(
            tag: name,
            child: new Material(
              child: new InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailMakanan(
                              name: name,
                              image: image,
                              definisi: definisi,
                              bahan: bahan)));
                },
                child: Image.asset(
                  "images/$image",
                  fit: BoxFit.cover,
                  width: 300.0,
                  height: 140.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Text(name, style: TextStyle(fontSize: 18.0, color: PrimaryColor))
        ],
      ))));
    }
  }

  @override
  void initState() {
    _listMakanan();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: daftarMakanan,
      ),
    );
  }
}
