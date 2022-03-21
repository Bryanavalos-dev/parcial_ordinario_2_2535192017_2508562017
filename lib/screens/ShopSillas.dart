// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial_ordinario_2_2535192017_2508562017/ProductSillas.dart';
import 'package:parcial_ordinario_2_2535192017_2508562017/screens/DetalleProduct.dart';

class Sillas extends StatefulWidget {
  final dynamic sillaD;
  const Sillas({Key? key, this.sillaD}) : super(key: key);
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
    return GridView.builder(
        itemCount: sillasList.length,
        primary: false,
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        alignment: Alignment.bottomCenter,
                        child: DetalleProduct(
                          title: sillasList[index]['title'],
                          description: sillasList[index]['description'],
                          img: sillasList[index]['img'],
                          price: sillasList[index]['price'],
                        ),
                        type: PageTransitionType.scale));
              },
              child: Card(
                color: Color(0xFFEEEEEE),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                            width: 100,
                            height: 100,
                            image: AssetImage(sillasList[index]['img']),
                          ),
                          Text(
                            sillasList[index]['title'],
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 16),
                          ),
                          Center(
                              child: Text(
                            '\$' + sillasList[index]['price'],
                            style:
                                TextStyle(fontSize: 16, color: Colors.blueGrey),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
