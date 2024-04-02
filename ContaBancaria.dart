class ContaBancaria {
  final String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valorDeposito) {
    saldo += valorDeposito;
  }

  void sacar(double valorSaque) {
    if (saldo >= valorSaque) {
      saldo -= valorSaque;
    } else {
      print("Saldo insufiente para saque.");
    }
  }

  void imprimirSaldo() {
    print("Saldo atual: $saldo");
  }
}

void main() {
  ContaBancaria conta = ContaBancaria("Mateus", 10000.00);
  conta.imprimirSaldo();
  conta.sacar(1200.00);
  conta.imprimirSaldo();
  conta.depositar(2500.00);
  conta.imprimirSaldo();
}
