import 'package:burdur_bucak_app/constants.dart';
import 'package:burdur_bucak_app/screens/haber/haber_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burdur Bucak app',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: cPrimaryColor,
        accentColor: cPrimaryColor,
      ),
      home: ProductsScreen(),
    );
  }
}
