import 'package:flutter/material.dart';
import 'pagina_2.dart';

class Pagina1 extends StatefulWidget {
  @override
  _Pagina1State createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  final Map<String, ItemInfo> contadores = {
    'Alface Crespa': ItemInfo(quantidade: 0, preco: 0.0),
    'Alface Roxa': ItemInfo(quantidade: 0, preco: 0.0),
    'Alface Lisa': ItemInfo(quantidade: 0, preco: 0.0),
    // Adicione mais itens aqui
  };

  void _updateContador(String item, int value) {
    setState(() {
      contadores[item]!.quantidade += value;
    });
  }

  void _enviarParaEstoque(Map<String, ItemInfo> estoque) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Pagina2(estoque: estoque),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador', style: TextStyle(fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              _enviarParaEstoque(contadores);
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              for (var item in contadores.keys)
                ListTile(
                  title: Text(item, style: const TextStyle(fontSize: 18, color: Colors.black)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildActionButton('-', Colors.red, () => _updateContador(item, -1)),
                      const SizedBox(width: 10),
                      Text('${contadores[item]!.quantidade}', style: const TextStyle(fontSize: 18, color: Colors.black)),
                      const SizedBox(width: 10),
                      _buildActionButton('+', Colors.green, () => _updateContador(item, 1)),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label, style: const TextStyle(fontSize: 18, color: Colors.white)),
      style: ElevatedButton.styleFrom(primary: color),
    );
  }
}

class ItemInfo {
  int quantidade;
  double preco;

  ItemInfo({required this.quantidade, required this.preco});
}
