import 'package:flutter/material.dart';

//Kategoryler için Statefula ihtiyacımız var çünkü durumları değişecek
class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  // default olarak ilk kategori seçimi
  int defaultIndex = 0;
  List categories = [
    'Haberler',
    'Duyurular',
    'İhaleler',
    'İlanlar',
    'Etkinlikler'
  ];
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              defaultIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(
                left: 20.0, right: index == categories.length - 1 ? 20.0 : 0),
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            alignment: Alignment.center,
            child: Text(
              categories[index],
              style: TextStyle(
                  color: index == defaultIndex ? Colors.white : Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
