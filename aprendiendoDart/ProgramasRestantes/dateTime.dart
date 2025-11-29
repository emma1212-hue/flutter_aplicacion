void main() {
  DateTime ahora = DateTime.now();
  print("JOSE EMMANUEL RAMIREZ OLIVARES"); 
  print("DAMARIS AVILA PACHECO");
  print(ahora);
  print('Año: ${ahora.year}');
  print('Mes: ${ahora.month}');
  print('Día: ${ahora.day}');
  print('hora: ${ahora.hour}');
  print('minutos: ${ahora.minute}');
  print('segundos: ${ahora.second}');
  print('==================================\n');

  print(ahora.add(Duration(days: 10)));
  print(ahora.subtract(Duration(days: 8)));
  print('==================================\n');

  DateTime fechaIngreso = DateTime(2025, 9, 17);
  DateTime fechaCancelacion = DateTime(2025, 9, 17);
  print(fechaIngreso.isBefore(fechaCancelacion));
  print(fechaIngreso.isAfter(fechaCancelacion));
  print(fechaIngreso.isAtSameMomentAs(fechaCancelacion));

  //fecha especifica
  DateTime cumple = DateTime(1995, 5, 20);
  print(cumple);
}