import 'dart:io';

import 'evaluation.dart';

void main() {
  Evaluation evaluation = Evaluation();
  print('Digite a primeira nota: ');
  evaluation.firstNote = double.parse(stdin.readLineSync()!);
  print('Digite a segunda nota: ');
  evaluation.secondNote = double.parse(stdin.readLineSync()!);
  print('Digite a terceira nota: ');
  evaluation.thirdNote = double.parse(stdin.readLineSync()!);
  double average = evaluation.calculateAverage();
  print('Média: ${average.toStringAsFixed(1)}');
  if (average >= 6) {
    print('Aluno aprovado');
  } else if (average >= 4) {
    print('Aluno em exame');
  } else {
    print('Aluno reprovado');
  }
}