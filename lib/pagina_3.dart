import 'package:flutter/material.dart';

class Pagina3 extends StatefulWidget {
  final List<String> itensVendidos;

  Pagina3({required this.itensVendidos});

  @override
  _Pagina3State createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendas'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            for (var item in widget.itensVendidos)
              ListTile(
                title: Text(item),
              ),
          ],
        ),
      ),
    );
  }
}
