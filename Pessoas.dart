import 'dart:math';

class Pessoa {
  String _nome = "";
  int _idade = 0;
  double _altura = 0.0;

  int get idade => _idade;

  set idade(int idade) {
    if (idade >= 0) {
      _idade = idade;
    } else {
      throw Exception("A idade não pode ser negativa.");
    }
  }

  String get nome => _nome;

  set nome(String nome) => _nome = nome;

  double get altura => _altura;

  set altura(double altura) => _altura = altura;
}

void main() {
  final random = Random();
  final int idade = random.nextInt(100) + 1;
  final double altura = random.nextDouble() * 1.3 + 1;

  Pessoa pessoa = Pessoa();

  pessoa.nome = "Mateus";
  pessoa.idade = idade;
  pessoa.altura = altura;

  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa.altura.toStringAsFixed(2)}");
}
