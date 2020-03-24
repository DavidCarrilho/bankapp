import 'package:flutter/material.dart';

import 'lista_transferencia.dart';

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListaTransferencia(),
      ),
    );
  }
}
