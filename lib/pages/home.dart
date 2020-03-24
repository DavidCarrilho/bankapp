import 'package:flutter/material.dart';

import 'lista_transferencia.dart';

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey[800],
        accentColor: Colors.pink[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.pink[700],
          textTheme: ButtonTextTheme.primary
        )
      ),
      debugShowCheckedModeBanner: false,
      home: ListaTransferencia(),
    );
  }
}
