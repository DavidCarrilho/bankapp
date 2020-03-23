import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferência"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  labelText: 'Número da conta', hintText: 'XXXX-X'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on, color: Colors.amber,),
                  labelText: 'Valor',
                  hintText: '0.00'),
            ),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: const Text(
                  'Confirmar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
