// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shop_app/models/ProductSillas.dart';

class Sillas extends StatefulWidget {
  @override
  _SillasState createState() => _SillasState();
}

class _SillasState extends State<Sillas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getListaSillas(),
    );
  }

  getListaSillas() {
    return Center(
        child: GridView.builder(
            itemCount: sillasList.length,
            primary: false,
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //crossAxisSpacing: 10
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Expanded(
                    //padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage(sillasList[index]['img']),
                            ),
                            Text(
                              sillasList[index]['title'],
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Center(
                                child: Text(
                              '\$' + sillasList[index]['price'],
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
