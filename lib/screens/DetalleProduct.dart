// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'color_dots.dart';

class DetalleProduct extends StatefulWidget {
  final String title;
  final String description;
  final String img;
  final String price;
  const DetalleProduct(
      {Key? key,
      required this.title,
      required this.description,
      required this.img,
      required this.price})
      : super(key: key);

  @override
  State<DetalleProduct> createState() => _DetalleProductState();
}

class _DetalleProductState extends State<DetalleProduct> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text("Detalle de Producto"),
        actions: const [
          IconButton(
              icon: Icon(
                Feather.shopping_bag,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.img), fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: size.width - 80,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          "\$" + widget.price,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  widget.description,
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                ColorDot(
                  fillColor: Colors.green,
                  //Color(0xFF80989A),
                  isSelected: true,
                ),
                ColorDot(
                  fillColor: Colors.grey,
                  //Color(0xFFFF5200),
                ),
                ColorDot(
                  fillColor: Colors.red,
                  //Color(0xFF035AA6),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
