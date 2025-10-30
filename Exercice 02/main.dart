import 'dart:io';

void main() {
  try {
    print("Entrez votre age :");
    String? input = stdin.readLineSync();
    int age = int.parse(input!);
    print("Votre age est $age ans");
  } on FormatException catch (e) {
    print("Format age invalide");
  } finally {
    print("Fin d'opération");
  }
}
