import 'dart:math';

class Retangulo {
  final double largura;
  final double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea() {
    return largura * altura;
  }
}

void main() {
  final random = Random();
  Retangulo retangulo =
      Retangulo(random.nextDouble() * 10, random.nextDouble() * 10);

  double area = retangulo.calcularArea();
  print("Área do retângulo: $area");
}
