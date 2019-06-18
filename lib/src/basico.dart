import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final TextStyle titulo = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final TextStyle subtitulo = TextStyle(fontSize: 14, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            this._mostrarImagen(screenSize),
            SizedBox(
              height: 10.0,
            ),
            this._mostrarTarjetaTextos(),
            SizedBox(
              height: 0.0,
            ),
            this._iconosOpciones(),
            this._mostrarTexto(screenSize),
            this._mostrarTexto(screenSize),
            this._mostrarTexto(screenSize)
          ],
        ),
      ),
    );
  }

  Image _mostrarImagen(screenSize) {
    return Image(
      width: screenSize.width,
      height: screenSize.height * 0.35,
      fit: BoxFit.cover,
      image: NetworkImage(
          "https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=1&w=500"),
    );
  }

  Widget _mostrarTarjetaTextos() {
    return SafeArea(
      top: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Viaje a las islas malvinas",
                      style: titulo,
                    ),
                    Text(
                      "Es una experiencia inolvidable",
                      style: subtitulo,
                    )
                  ]),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text("41", style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }

  Widget _iconosOpciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        this.iconoTextoMenu("Call", Icons.phone),
        this.iconoTextoMenu("Route", Icons.navigation),
        this.iconoTextoMenu("Share", Icons.share)
      ],
    );
  }

  Column iconoTextoMenu(String texto, IconData icono) {
    return Column(children: <Widget>[
      Icon(
        icono,
        color: Colors.blue,
        size: 30,
      ),
      Text(
        texto,
        style: TextStyle(fontSize: 18, color: Colors.blue),
      )
    ]);
  }

  _mostrarTexto(screenSize) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.10, vertical: 20.0),
      child: Text(
        "Duis eu adipisicing id culpa eu eiusmod in fugiat excepteur aute. Culpa ea elit veniam non labore aute sit ut commodo adipisicing proident. Qui dolor laboris et mollit nulla sint ipsum ea do. Occaecat nisi sunt qui aute sunt fugiat proident. Irure sunt qui labore ullamco cillum laborum ipsum anim anim elit officia consectetur. Sint sunt dolore ut dolor veniam mollit labore cupidatat veniam occaecat commodo ea id. Laborum qui culpa consequat enim esse sit ullamco ea mollit exercitation consequat incididunt consequat adipisicing.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}
