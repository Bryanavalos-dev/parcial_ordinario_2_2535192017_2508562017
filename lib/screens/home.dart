// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:parcial_ordinario_2_2535192017_2508562017/ProductSillas.dart';
import 'package:parcial_ordinario_2_2535192017_2508562017/screens/ShopSillas.dart';
//import 'Paginas/header.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int Menu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Comercial SIVAR"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: getBusqueda(),
    );
  }

  Widget getBusqueda() {
    return Column(//crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  iconColor: Colors.blueGrey,
                  icon: Icon(Icons.search),
                  labelText: "BUSQUEDA",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            )
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
              children: List.generate(OverList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 25),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Menu = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      OverList[index],
                      style: TextStyle(
                          //color: Colors.grey,
                          fontSize: 15,
                          color: Menu == index ? Colors.blueGrey : Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Menu == index
                        ? Container(
                            width: 30,
                            height: 2,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10)),
                          )
                        : Container()
                  ],
                ),
              ),
            );
          })),
        ),
      ),
      Expanded(
        flex: 1,
        child: Sillas(),
      )
    ]);
  }
}
