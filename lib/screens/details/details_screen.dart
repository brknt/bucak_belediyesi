import 'package:burdur_bucak_app/constants.dart';
import 'package:burdur_bucak_app/models/haber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Haber haber;

  const DetailsScreen({Key key, this.haber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            children: <Widget>[
              Image(
                fit: BoxFit.cover,
                height: height * 0.5,
                image: AssetImage(haber.image),
              ),
              Positioned(
                top: 50,
                left: -10,
                child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                        size: 30, color: Colors.white)),
              ),
              Positioned(
                top: 50,
                right: -10,
                child: FlatButton(
                  onPressed: () {},
                  child: SvgPicture.asset('assets/icons/save.svg'),
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.4,
                maxChildSize: 0.6,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(30)),
                        width: width * 0.7,
                        child: Column(
                          children: [
                            Text(
                              haber.haber_title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(haber.haber_date),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              haber.haber_description,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Material(
                              //borderRadius: BorderRadius.circular(30),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: cPrimaryColor,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 4,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sonraki Haber  ',
                                      style: TextStyle(
                                          fontSize: 18, color: cPrimaryColor),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: cPrimaryColor,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
