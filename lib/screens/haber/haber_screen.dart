import 'package:burdur_bucak_app/constants.dart';
import 'package:burdur_bucak_app/screens/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: cPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/cloudy.svg"),
          // onPressed: () {},
        ),
      ],
    );
  }
}
