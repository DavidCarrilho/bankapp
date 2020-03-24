import 'package:bankapp/model/transferencia.dart';
import 'package:flutter/material.dart';

import '../model/transferencia.dart';
import 'formulario_transferencia.dart';
import 'item_transferencia.dart';

class ListaTransferencia extends StatelessWidget {
  final List<Transferencia> _transferencias = List();

  @override
  Widget build(BuildContext context) {
    _transferencias.add(Transferencia(100, 1000));
    _transferencias.add(Transferencia(100, 1000));
    _transferencias.add(Transferencia(100, 1000));
    _transferencias.add(Transferencia(100, 1000));
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.attach_money, color: Colors.amberAccent, size: 40,),
        title: Text('Tranferência'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _transferencias.length,
        itemBuilder: (context, index) {
          final transferencia = _transferencias[index];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((transferenciaRecebida) =>
              _transferencias.add(transferenciaRecebida));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
