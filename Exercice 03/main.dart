void verifierMotdepasse(String password){
  if (password.length < 6) {
    throw Exception("Le mot de passe doit contenir au moisn 6 caracteres.");

  } else {
    print("Password accepted");
  }
}

void main(){
  try{
    verifierMotdepasse("Pas12");
  }catch (e){
    print("Error : $e");
  }
}