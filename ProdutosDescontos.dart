class Produto {
  final String nome;
  final double preco;

  Produto(this.nome, this.preco);

  double desconto(double percentualDesconto) {
    double descontoAplicado = preco * (percentualDesconto / 100);
    return preco - descontoAplicado;
  }
}

void main() {
  List<Produto> produtos = [
    Produto("Mouse", 100.0),
    Produto("Fone", 200.0),
    Produto("Teclado", 300.0),
    Produto("Gabinete", 400.0),
    Produto("Processador", 500.0)
  ];

  double percentualDesconto = 20.0;

  produtos.forEach((produto) {
    final double novoPreco = produto.desconto(percentualDesconto);
    print("Novo preço do produto ${produto.nome} (com desconto) $novoPreco");
  });
}
