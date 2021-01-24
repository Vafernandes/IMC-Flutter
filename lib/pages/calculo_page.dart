import 'dart:math';

import 'package:flutter/material.dart';

class CalculoPage extends StatefulWidget {
  @override
  _CalculoPageState createState() => _CalculoPageState();
}

class _CalculoPageState extends State<CalculoPage> {
  var peso = 0.0;
  var altura = 0.0;
  var info = '';

  calculaImc(double peso, double altura) {
    return peso / pow(altura, 2);
  }

  validaImc(double peso, double altura) {
    var resultado = calculaImc(peso, altura);

    if (peso == 0.0 || altura == 0.0) {
      setState(() {
        info = '';
      });
    }

    if (resultado < 18.5) {
      setState(() {
        info = 'MAGREZA';
      });
    } else if (resultado >= 18.5 && resultado <= 24.9) {
      setState(() {
        info = 'Normal';
      });
    } else if (resultado >= 25.0 && resultado <= 29.9) {
      setState(() {
        info = 'SOBREPESO';
      });
    } else if (resultado >= 30.0 && resultado <= 39.9) {
      setState(() {
        info = 'OBESIDADE';
      });
    } else if (resultado >= 40.0) {
      setState(() {
        info = 'OBESIDADE GRAVE';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Por favor, insira seus dados',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(
                          decimal: true, signed: false),
                      decoration: InputDecoration(
                        labelText: 'Peso (kg)',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        icon: Icon(
                          Icons.speed,
                          size: 40,
                          color: Colors.green,
                        ),
                      ),
                      onChanged: (valor) {
                        peso = double.parse(valor);
                      },
                    ),
                    Container(height: 12),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(
                          decimal: true, signed: false),
                      decoration: InputDecoration(
                          labelText: 'Altura (cm)',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          icon: Icon(
                            Icons.elevator,
                            size: 40,
                            color: Colors.green,
                          )),
                      onChanged: (value) {
                        altura = double.parse(value);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Calcular',
                            style: TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            validaImc(peso, altura);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: (info == '')
                    ? Text('')
                    : Text(
                        'IMC: $info',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
