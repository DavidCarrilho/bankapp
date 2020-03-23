import 'package:app_alura/model/transferencia.dart';
import 'package:app_alura/pages/item_transferencia.dart';
import 'package:flutter/material.dart';

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tranfereência',
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(100, 1000)),
          ItemTransferencia(Transferencia(500, 2134)),
          ItemTransferencia(Transferencia(600, 1231)),
          ItemTransferencia(Transferencia(600, 1231)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}