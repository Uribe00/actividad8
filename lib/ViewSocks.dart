import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ViewSneakers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: mediaQuery.size.height / 3,
            child: FadeInUp(
                duration: Duration(milliseconds: 1200),
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topRight, colors: [
                    Color.fromRGBO(70, 130, 180, 1), // Azul acero
                    Color.fromRGBO(0, 0, 139, 1) // Azul oscuro
                  ])),
                  child: Transform.translate(
                    offset: Offset(30, -30),
                    child: FadeInUp(
                        duration: Duration(milliseconds: 1300),
                        child: Image.network(
                          'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0e9d878b-92f4-4f36-a351-be0711370243/tenis-de-correr-en-pavimento-run-defy-PyILgWaG.png',
                          fit: BoxFit.contain,
                        )),
                  ),
                )),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: MediaQuery.of(context).size.height / 1.4,
              child: FadeInUp(
                  duration: Duration(milliseconds: 1200),
                  child: Container(
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeInUp(
                            duration: Duration(milliseconds: 1300),
                            child: Text(
                              'Nike Air Max 270',
                              style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, .54),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1300),
                            child: Text(
                              "Men's Running Shoes",
                              style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, 1),
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1400),
                            child: Text(
                              "The Nike Air Max 270 delivers a comfortable fit with its lightweight cushioning and breathable mesh upper. Featuring the tallest Max Air unit to date, these shoes provide all-day comfort and a bold style that stands out.",
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 0.54),
                                height: 1.4,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              FadeInUp(
                                  duration: Duration(milliseconds: 1200),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 3, color: Colors.blue),
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                  )),
                              FadeInUp(
                                  duration: Duration(milliseconds: 1300),
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(70, 130, 180, 1)),
                                  )),
                              FadeInUp(
                                  duration: Duration(milliseconds: 1300),
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(220, 20, 60, 1)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1200),
                            child: Text(
                              'More options',
                              style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, .54),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 80,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                FadeInUp(
                                    duration: Duration(milliseconds: 1300),
                                    child: AspectRatio(
                                      aspectRatio: 3.2 / 1,
                                      child: Container(
                                        padding: EdgeInsets.all(13),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey.shade300),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 56,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  color: Color.fromRGBO(
                                                      70, 130, 180, 1)),
                                              child: Image.network(
                                                'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/1ffa33d7-7c39-4b91-805d-7db531db0d35/tenis-cortez-leather-JcMNf8.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Air Max 90',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          97, 90, 90, 1),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  '\$130',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          97, 90, 90, .7),
                                                      fontSize: 13),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                                FadeInUp(
                                    duration: Duration(milliseconds: 1400),
                                    child: AspectRatio(
                                      aspectRatio: 3.2 / 1,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 20),
                                        padding: EdgeInsets.all(13),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey.shade300),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 56,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  color: Color.fromRGBO(
                                                      220, 20, 60, 1)),
                                              child: Image.network(
                                                'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/1ffa33d7-7c39-4b91-805d-7db531db0d35/tenis-cortez-leather-JcMNf8.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Air Jordan 1',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          97, 90, 90, 1),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  '\$125',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          97, 90, 90, .7),
                                                      fontSize: 13),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          FadeInUp(
                              duration: Duration(milliseconds: 1500),
                              child: Container(
                                height: 60,
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 10,
                                          offset: Offset(0, 10))
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    gradient: LinearGradient(colors: [
                                      Color.fromRGBO(70, 130, 180, 1),
                                      Color.fromRGBO(0, 0, 139, 1)
                                    ])),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: <Widget>[
                                        Text(
                                          '\$129.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('99',
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                    Text(
                                      'Buy Now',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ))))),
        ],
      ),
    );
  }
}
