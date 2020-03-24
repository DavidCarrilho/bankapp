import 'package:bankapp/model/transferencia.dart';
import 'package:bankapp/pages/item_transferencia.dart';
import 'package:flutter/material.dart';

import '../model/transferencia.dart';
import 'formulario_transferencia.dart';

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tranferência'),
        centerTitle: true,
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
        onPressed: () {
          final Future<Transferencia> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then(
              (transferenciaRecebida) => debugPrint('$transferenciaRecebida'));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
