import 'package:flutter/material.dart';

class Ingresotexto extends StatefulWidget{
  const Ingresotexto({super.key});

  @override
  State<Ingresotexto> createState() => IngresotextoState();



}

class IngresotextoState extends State<Ingresotexto>{
final TextEditingController _controller = TextEditingController();
final _llaveFormulario = GlobalKey<FormState>();
String textomostrado = '';
bool usuarioActivo= false;
String? opcionSeleccionada;

bool opcion1 = false;
bool opcion2 = false;
bool opcion3 = false;
  String? nivelExperiencia;

final List<String> paises = [
  'México',
  'Perú',
  'Colombia',
];

void mostrarTexto(){
  if (_llaveFormulario.currentState!.validate()) {
    setState(() {
  
    List<String> lenguajes = [];
    if(opcion1) lenguajes.add('Dart');
    if(opcion2) lenguajes.add('Java');
    if(opcion3) lenguajes.add('Pyhton');

      textomostrado =''' ${_controller.text}\nPaís: $opcionSeleccionada\n
    Usuario activo: ${usuarioActivo ? "Activo" : "Inactivo"}
    Lenguaje Seleccionado: ${lenguajes.isEmpty ? 'Ninguno' : lenguajes.join(', ')}''';

  });
  }
}

void limpiaTexto8(){
  setState(() {
    _controller.clear();
    textomostrado = '';
    opcionSeleccionada = null;
    usuarioActivo = false;

  opcion1 = false;

  opcion2 = false;

  opcion3 = false;



  });
}

@override
Widget build (BuildContext context){
  return Scaffold(
    appBar: AppBar(title: Text("Registro de nombre"),),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView( // <-- Envolvemos todo en SingleChildScrollView
        child: Form(
          key: _llaveFormulario,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Campo de texto para ingresar el nombre
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Ingrese su nombre',
                  border: OutlineInputBorder(),
                ),
                validator: (value){ 
                  if(value==null || value.isEmpty){
                    return 'Por favor ingrese su nombre';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // DROPDOWN PARA SELECCIONAR PAIS
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Seleccione un país',
                  border: OutlineInputBorder(),
                ), 
                // ignore: deprecated_member_use
                value: opcionSeleccionada,
                items: paises.map((opcion){
                  return DropdownMenuItem<String>(
                    value: opcion, 
                    child: Text(opcion),
                  );
                }).toList(),
                onChanged: (nuevoValor){
                  setState(() {
                    opcionSeleccionada = nuevoValor;
                  });
                },
                validator: (value){
                  if(value == null){
                    return 'Por favor seleccione un país';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // RADIOBUTTONS
              const Text(
                'Nivel de experiencia',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),  
              RadioListTile<String>(
                title: const Text("Junior"),
                value: "Junior",
                groupValue: nivelExperiencia,
                onChanged: (valor){
                  setState(() {
                    nivelExperiencia = valor;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Senior"),
                value: "Senior",
                groupValue: nivelExperiencia,
                onChanged: (valor){
                  setState(() {
                    nivelExperiencia = valor;
                  });
                },
              ),

              const SizedBox(height: 10),
              const Text(
                'Seleccione lenguaje',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              CheckboxListTile(
                title: const Text('Dart'),
                value: opcion1, 
                onChanged: (bool? valornuevo){
                  setState(() {
                    opcion1 = valornuevo!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Java'),
                value: opcion2, 
                onChanged: (bool? valornuevo){
                  setState(() {
                    opcion2 = valornuevo!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Python'),
                value: opcion3, 
                onChanged: (bool? valornuevo){
                  setState(() {
                    opcion3 = valornuevo!;
                  });
                },
              ),

              // SWITCH PARA USUARIO ACTIVO
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Usuario Activo?',
                    style: TextStyle(fontSize: 16),
                  ),
                  Switch(
                    value: usuarioActivo,
                    onChanged: (valornuevo){
                      setState(() {
                        usuarioActivo = valornuevo;
                      });
                    },
                  )
                ],
              ),

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: mostrarTexto, 
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text('Mostrar Nombre')
                  ),
                  ElevatedButton(
                    onPressed: limpiaTexto8,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 0, 72),
                    ),
                    child: const Text('Limpiar')
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                textomostrado.isEmpty 
                  ? '''Mostrar: muestre su nombre
Limpiar: Limpia el texto colocado'''
                  : 'Texto ingresado: $textomostrado',
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
}