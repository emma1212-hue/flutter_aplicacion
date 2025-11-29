void main(){
  String palabra = "Hola";
  String palabra2 = "A TODOS";
  String palabra3 ="O\"null";
  String palabra4 = r"texto en linea 1\n"
  "segunda linea\n"
  "tercera linea";
  String palabra5 = '''estoy leyendo
  con Dart''';
  
  String palabra6 = "";

  /*print("Saludos: $palabra $palabra2");
  print(palabra2);
  print(palabra3);
  print(palabra4);
  print(palabra5);
  */
  print(palabra5.length);
  print(palabra6.isEmpty);
  print(palabra6.isNotEmpty);
  print(palabra2[4]);
  print(palabra.contains("Hola"));
  print(palabra3.startsWith("O"));
  print(palabra3.endsWith("l"));
  print(palabra5.indexOf("Dart"));
  print(palabra4.substring(0,5));
  print(palabra4.split("a"));
  print(palabra.toUpperCase());
  print(palabra.toLowerCase());
}