import "dart:io";
void main(){
  print("Ingresa tu edad");
  int edad = int.parse(stdin.readLineSync()!);
  print("¿Tienes licencia?");
  String tienesLicencia = stdin.readLineSync()!;

//operador lógico Y
  if(edad >=18 && tienesLicencia=="si")
  {
    print("Permiso de conducir aprovado");    
  }
  else
  {
    print("Permiso de conducir denegado");
  }

  print("Eres usuario admin");
  String admin = stdin.readLineSync()!;
  print("¿Eres usuario root?");
  String usuarioRoot = stdin.readLineSync()!;

  if(admin =="si" || usuarioRoot=="si")
  {
    print("Acceso permitido");    
  }
  else
  {
    print("Acceso denegado");
  }
  

  bool activo = true;
  print(activo);
  print(!activo);

}