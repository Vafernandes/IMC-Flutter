import 'dart:math';

import 'package:flutter/cupertino.dart';

class ValidaImc extends ChangeNotifier {
  static ValidaImc instance = ValidaImc();

  final double peso, altura;
  var info = '';

  ValidaImc({this.peso, this.altura})
      : assert(peso != 0.0),
        assert(altura != 0.0);

  calculaImc(double peso, double altura) {
    return peso / pow(altura, 2);
  }

  validaImc(double peso, double altura) {
    var resultado = calculaImc(peso, altura);

    if (peso == 0.0 || altura == 0.0) {
      info = '';
    }

    if (resultado < 18.5) {
      info = 'MAGREZA';
    } else if (resultado >= 18.5 && resultado <= 24.9) {
      info = 'Normal';
    } else if (resultado >= 25.0 && resultado <= 29.9) {
      info = 'SOBREPESO';
    } else if (resultado >= 30.0 && resultado <= 39.9) {
      info = 'OBESIDADE';
    } else if (resultado >= 40.0) {
      info = 'OBESIDADE GRAVE';
    }
    print('$peso $altura');

    notifyListeners();
  }
}
