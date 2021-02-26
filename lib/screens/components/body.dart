import 'package:burdur_bucak_app/constants.dart';
import 'package:burdur_bucak_app/models/haber.dart';
import 'package:burdur_bucak_app/screens/components/haber_card.dart';
import 'package:burdur_bucak_app/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categories_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          Categorylist(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 35.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Güncel Haberler',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            //expanded widgetları esnetmemize yarar.
            child: Stack(
              //Stack  ögeleri üs üste koymamıza yarar.
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: cBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 70),
                ),
                ListView.builder(
                  itemCount: haber_list.length,
                  itemBuilder: (context, index) => HaberCard(
                    itemIndex: index,
                    haber: haber_list[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            haber: haber_list[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
