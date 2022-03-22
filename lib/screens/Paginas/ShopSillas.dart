// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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

  Widget getListaSillas() {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: GridView.builder(
        itemCount: sillasList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(sillasList.length - 0, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          /*Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomCenter,
                                  child: Pagina(
                                    song: sillasList[index],
                                  ),
                                  type: PageTransitionType.scale));^*/
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 120,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(sillasList[index]['img']),
                                      fit: BoxFit.fill),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              sillasList[index]['title'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 180,
                              child: Text(
                                sillasList[index]['price'],
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })));
        },
      ),
    );
  }
}
