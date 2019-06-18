import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              this._colorFondo(),
              this._imagenFondo(),
              this._elementos()
            ],
          ),
          this._pagina2()
        ],
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Image(
      image: AssetImage("assets/scroll-1.png"),
    );
  }

  Widget _elementos() {
    final estiloTexto = TextStyle(fontSize: 50.0, color: Colors.white);
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "11°",
                  style: estiloTexto,
                ),
                Text(
                  "Miercoles",
                  style: estiloTexto,
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {},
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Bienvenidos!",style: TextStyle(fontSize: 20),)),
        ),
      ),
    );
  }
}
