import 'package:bankapp/models/transferencia.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on, color: Colors.amber, size: 30),
        title: Text(" Valor Transferido $_transferencia.valor".toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}
