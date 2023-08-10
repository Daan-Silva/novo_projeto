import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'pagina_1.dart';
import 'pagina_2.dart';
import 'pagina_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/pagina1': (context) => Pagina1(),
        '/pagina2': (context) => Pagina2(estoque: {}, precos: {}),
        '/pagina3': (context) => Pagina3(itensVendidos: []),
      },
    );
  }
}
