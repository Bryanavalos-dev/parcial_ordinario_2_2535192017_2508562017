import 'package:flutter/material.dart';
import 'package:shop_app/screens/home.dart';

void main() {
  runApp(const Tienda());
}

class Tienda extends StatelessWidget {
  const Tienda({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de Muebles',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: home(),
    );
  }
}
