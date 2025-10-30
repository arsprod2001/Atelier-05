import 'dart:io';

class NombreNegatifException implements Exception {
  final String message;
  NombreNegatifException(this.message);

  @override
  String toString() => "NombreNegatifException : $message";
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    String? saisie = stdin.readLineSync();
    int nombre = int.parse(saisie!);

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre ne peut pas etre negatif");
    }

    print("Le carre de $nombre est ${nombre * nombre}");
  } on NombreNegatifException catch (e) {
    print(e);
  } on FormatException {
    print("Format invalide ");
  } finally {
    print("Fin d'operation");
  }
}
