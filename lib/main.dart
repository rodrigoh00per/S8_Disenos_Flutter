import 'package:flutter/material.dart';
import 'package:s8_disenos_flutter/src/basico.dart';
import 'package:s8_disenos_flutter/src/dise%C3%B1o_stack_grandiente.dart';
import 'package:s8_disenos_flutter/src/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: "disenostackgradiente",
        routes: {
          "basico": (BuildContext context) => BasicoPage(),
          "scroll": (BuildContext context) => ScrollPage(),
          "disenostackgradiente": (BuildContext context) =>
              DisenoStackGradientePage(),
        });
  }
}
