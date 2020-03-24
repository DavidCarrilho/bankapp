import 'package:bankapp/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Criando Transferência";
const _rotuloValor = "Valor";
const _rotuloConta = "Número da conta";
const _dicaValor = "0.00";
const _dicaConta = "XXXX-X";
const _textoBotao = "Confirmar";

class FormularioTransferencia extends StatefulWidget {
  @override
  _FormularioTransferenciaState createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorNumeroConta = TextEditingController();

  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_tituloAppBar),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controladorNumeroConta,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      labelText: _rotuloConta, hintText: _dicaConta),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controladorValor,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.monetization_on,
                        color: Colors.amber,
                      ),
                      labelText: _rotuloValor,
                      hintText: _dicaValor),
                ),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: <Color>[
                      //     Color(0xFF0D47A1),
                      //     Color(0xFF1976D2),
                      //     Color(0xFF42A5F5),
                      //   ],
                      // ),
                      ),
                  padding: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: const Text(
                      _textoBotao,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                onPressed: () => _criaTransferencia(context),
              )
            ],
          ),
        ));
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorNumeroConta.text);
    final double valor = double.tryParse(_controladorValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
