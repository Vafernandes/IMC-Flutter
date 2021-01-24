import 'package:flutter/material.dart';
import 'package:imc/pages/calculo_page.dart';

main() {
  runApp(Teste());
}

class Teste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
