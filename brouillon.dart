import 'package:flutter/material.dart';

import 'provider/data.dart';
import 'widget/filmItem.dart';

class Brouillon1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/serie1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          Text(
                            "Marvel DareDevil",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Container()
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -490,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 70,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Episode info',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 70,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: Text(
                                'while driving throught michigan, Franks Stops for a beer at a roadside bar. but staying out of trouble has never been strong suit',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Watch now',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'view more',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 220,
                        margin: EdgeInsets.only(left: 70),
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: marvelData.length,
                            itemBuilder: (context, i) {
                              return FilmItem(
                                cover: marvelData[i]["cover"],
                                titre: marvelData[i]["titre"],
                                descrip: marvelData[i]["descrip"],
                              );
                            }),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
