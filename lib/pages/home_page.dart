import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Calcule o seu',
                        style:
                            TextStyle(color: Colors.green[900], fontSize: 35),
                      ),
                      Container(
                        width: 10,
                      ),
                      Text(
                        'IMC',
                        style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ],
                  ),
                  Container(height: 30),
                  Container(
                    child: Text(
                      'Entada como funciona a parametrização do IMC',
                      style: TextStyle(color: Colors.grey[900], fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 100),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'COMEÇAR',
                  style: TextStyle(fontSize: 17),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/calculo');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
