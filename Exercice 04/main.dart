class MotdepasseCourtException implements Exception{
  final String message;
  MotdepasseCourtException(this.message);

  @override
  String toString() => "MotdepasseCourtException : $message";
}


void verifierMotdepasse(String password){
  if (password.length < 6) {
    throw MotdepasseCourtException("Le mot de passe doit contenir au moisn 6 caracteres.");

  } else {
    print("Password accepted");
  }
}

void main(){
  try{
    verifierMotdepasse("Pas12");
  }on MotdepasseCourtException catch (e){
    print("Error : $e");
  }
}