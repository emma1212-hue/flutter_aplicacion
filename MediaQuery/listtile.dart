import 'package:flutter/material.dart';


class Listtile extends StatelessWidget {
  const Listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de ListTile'),
        ),
        body: ListView(
          children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Ejemplos de ListTile'),
            subtitle: Text('Emmanuel Ramírez y Damaris Avila'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Correo'),
            subtitle: Text("emmadev@emmadev.com"),
            trailing: Icon(Icons.arrow_forward),
          )
          ],
      
      )
      ),
    );
  }
}