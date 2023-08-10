import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  final Map<String, ItemInfo> estoque;
  final Map<String, double> precos;

  Pagina2({required this.estoque, required this.precos});

  @override
  _Pagina2State createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  void _removeFromStock(String item) {
    setState(() {
      widget.estoque[item]!.quantidade -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estoque'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            for (var item in widget.estoque.keys)
              ListTile(
                title: Text(item),
                subtitle: Text('Quantidade: ${widget.estoque[item]!.quantidade} | Preço: ${widget.precos[item]!.toStringAsFixed(2)}'),
                trailing: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () => _removeFromStock(item),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ItemInfo {
  int quantidade;
  double preco;

  ItemInfo({required this.quantidade, required this.preco});
}
