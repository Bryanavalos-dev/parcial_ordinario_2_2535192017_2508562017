import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parcial_ordinario_2_2535192017_2508562017/ProductSillas.dart';

import '../ProductSillas.dart';
import 'color_dots.dart';

class Cart extends StatefulWidget {
  const Cart({
    Key? key,
  }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  //double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text(
          "Lista de Compras",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Container(
                  width: 50,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(sillasList[0]['img']),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    //color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              sillasList[0]['title'],
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "\$" + sillasList[0]['price'],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(Icons.close_rounded)
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Container(
                  width: 50,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(sillasList[1]['img']),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    //color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              sillasList[1]['title'],
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "\$" + sillasList[1]['price'],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(Icons.close_rounded)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 250,
          ),
          Text(
            "Total de compra: \$60.98",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Padding(
              padding: EdgeInsets.only(left: 130, right: 130),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.archive_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      const Text('Comprar')
                    ]),
              )),
        ],
      ),
    );
  }
}
/*


 */