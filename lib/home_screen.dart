import 'package:flutter/material.dart';
import 'pagina_1.dart';
import 'pagina_3.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu', style: TextStyle(fontSize: 20, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Hortalina2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'HORTALINA',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Horta cultivada sem defensivos agrícolas, apenas adubação orgânica.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Cultivado pelos agricultores:\nLinalva e Levi Bastos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.5),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Ajuste para centralizar na tela
          children: [
            ListTile(
              title: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contador & Estoque',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pagina1');
              },
            ),
            ListTile(
              title: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Vendas',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pagina3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
