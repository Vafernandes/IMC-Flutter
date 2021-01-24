import 'package:flutter/material.dart';
import 'package:imc/pages/calculo_page.dart';
import 'package:imc/pages/home_page.dart';

main() {
  runApp(Teste());
}

class Teste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/calculo': (context) => CalculoPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
