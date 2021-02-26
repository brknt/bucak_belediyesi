import 'package:burdur_bucak_app/constants.dart';
import 'package:burdur_bucak_app/models/haber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberCard extends StatelessWidget {
  const HaberCard({
    Key key,
    this.itemIndex,
    this.haber,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Haber haber;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      //color: Colors.blueAccent,
      height: 270,
      width: 340,
      child: InkWell(
        onTap: press,
        child: Stack(
          children: <Widget>[
            Container(
              height: 270,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [cDefaultShadow],
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              child: Container(
                height: 120,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(haber.image),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 150,
                width: size.width - 100,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          haber.haber_title,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          haber.haber_description,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              haber.haber_date,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Görüntüle',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: cPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward),
                                  tooltip: "görüntüle",
                                  color: cPrimaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
