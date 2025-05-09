import 'package:animate_do/animate_do.dart';
import 'ViewSocks.dart'; // Asegúrate de tener esta vista creada
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeInUp(
                duration: Duration(milliseconds: 1000),
                child: Container(
                  height: 320,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25, right: 25, top: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0)),
                    gradient:
                        LinearGradient(begin: Alignment.topRight, colors: [
                      Color.fromRGBO(100, 200, 255, 1), // Azul claro
                      Color.fromRGBO(0, 100, 200, 1) // Azul oscuro
                    ]),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn-images.farfetch-contents.com/13/15/76/97/13157697_21516296_1000.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                          duration: Duration(milliseconds: 1000),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 20,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: FadeInUp(
                              duration: Duration(milliseconds: 1200),
                              child: Text('Mejores Zapatillas Deportivas',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: FadeInUp(
                                duration: Duration(milliseconds: 1300),
                                child: Image.network(
                                  'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/1ffa33d7-7c39-4b91-805d-7db531db0d35/tenis-cortez-leather-JcMNf8.png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Transform.translate(
              offset: Offset(0, -35),
              child: FadeInUp(
                  duration: Duration(milliseconds: 1200),
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 20, top: 8),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20.0,
                              offset: Offset(0, 10.0))
                        ],
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20.0,
                          ),
                          border: InputBorder.none,
                          hintText: 'Buscar zapatillas...'),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FadeInUp(
                        duration: Duration(milliseconds: 1200),
                        child: Text('Elige una categoría',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(97, 90, 90, 1))),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FadeInUp(
                                duration: Duration(milliseconds: 1200),
                                child: MaterialButton(
                                  elevation: 0,
                                  highlightElevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(10),
                                  onPressed: () {},
                                  color: Color.fromRGBO(0, 100, 200, 0.1),
                                  child: Text('Correr',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 100, 200, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                )),
                            SizedBox(
                              width: 20.0,
                            ),
                            FadeInUp(
                                duration: Duration(milliseconds: 1300),
                                child: MaterialButton(
                                  elevation: 0,
                                  highlightElevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(10),
                                  onPressed: () {},
                                  color: Color.fromRGBO(97, 90, 90, 0.1),
                                  child: Text('Baloncesto',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(97, 90, 90, 0.6),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FadeInUp(
                      duration: Duration(milliseconds: 1300),
                      child: makeCard(
                          context: context,
                          startColor: Color.fromRGBO(0, 150, 255, 1),
                          endColor: Color.fromRGBO(0, 50, 150, 1),
                          image:
                              'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0e9d878b-92f4-4f36-a351-be0711370243/tenis-de-correr-en-pavimento-run-defy-PyILgWaG.png')),
                  FadeInUp(
                      duration: Duration(milliseconds: 1400),
                      child: makeCard(
                          context: context,
                          startColor: Color.fromRGBO(255, 100, 100, 1),
                          endColor: Color.fromRGBO(200, 0, 0, 1),
                          image:
                              'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/1ffa33d7-7c39-4b91-805d-7db531db0d35/tenis-cortez-leather-JcMNf8.png')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCard({context, startColor, endColor, image}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade, child: ViewSneakers()));
      },
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [startColor, endColor],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: Offset(5, 10))
              ]),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Image.network(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
