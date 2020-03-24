class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'numeroConta: $numeroConta, Transferenciavalor: $valor';
  }
}
