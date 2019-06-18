import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class DisenoStackGradientePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          this._fondoPantalla(_screenSize),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[this._titulos(), this._tablaContenido()],
            ),
          ),
        ],
      ),
      bottomNavigationBar: this._bottomNavigationBar(context),
    );
  }

  Widget _fondoPantalla(screenSize) {
    return Stack(
      children: <Widget>[this._fondoMoradito(), this._cajitaRosa(screenSize)],
    );
  }

  Widget _cajitaRosa(screenSize) {
    return Positioned(
      top: -100.0,
      child: Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          width: screenSize.width / 1.1,
          height: screenSize.height / 2.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ])),
        ),
      ),
    );
  }

  Widget _fondoMoradito() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 1.0),
        Color.fromRGBO(35, 37, 57, 1.0),
      ], begin: FractionalOffset(0.0, 0.6), end: FractionalOffset(0.0, 1.0))),
    );
  }

  Widget _titulos() {
    return new Container(
      padding: EdgeInsets.only(top: 60.0, left: 15.0, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Classify Transaction",
            style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Classify this transaction into a particular category",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  decoration: TextDecoration.none))
        ],
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor:
              Color.fromRGBO(55, 57, 84, 1.0) //este es el color de la barrita
          ,
          primaryColor: Colors.pinkAccent, //este es para donde esta puesto
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.language), title: Container()),
          BottomNavigationBarItem(icon: Icon(Icons.laptop), title: Container()),
          BottomNavigationBarItem(icon: Icon(Icons.layers), title: Container())
        ],
      ),
    );
  }

  Widget _tablaContenido() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Table(
        children: [
          TableRow(children: [
            _tarjetaTextoIcono(Icons.library_music, Colors.yellow, "Musica"),
            _tarjetaTextoIcono(Icons.linked_camera, Colors.red, "Camara")
          ]),
          TableRow(children: [
            _tarjetaTextoIcono(Icons.live_help, Colors.blue, "Ayuda"),
            _tarjetaTextoIcono(Icons.live_tv, Colors.green, "Streaming en vivo")
          ]),
          TableRow(children: [
            _tarjetaTextoIcono(
                Icons.local_atm, Colors.orange, "Boletos de Avión"),
            _tarjetaTextoIcono(Icons.local_cafe, Colors.brown, "Cafeterias")
          ]),
        ],
      ),
    );
  }

  Widget _tarjetaTextoIcono(IconData icono, Color color, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(62, 66, 107, 0.7),
          ),
          height: 180.0,
          width: 180.0,
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 20),
              CircleAvatar(
                child: Icon(icono,color: Colors.white,),
                radius: 35,
                backgroundColor: color,
              ),
              Text(
                texto,
                style: TextStyle(
                    fontSize: 18,
                    color: color,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
