import 'package:flutter/material.dart';

class Layoutbuilder extends StatelessWidget {
  const Layoutbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo layoutbuilder'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains) {
            if (constrains.maxWidth < 400) {
              return Container(
                color: Colors.red,
                width: constrains.maxWidth,
                height: 100,
                child: const Center(
                  child: Text('Diseño compacto'),
                ),
              ); // <- Faltaba esta coma
            } else {
              return Container(
                color: Colors.green,
                width: constrains.maxWidth,
                height: 100,
                child: const Center(
                  child: Text('Diseño amplio'),
                ),
              );
            }
          },
        ), // <- Tenías un punto (.) aquí, debe ser coma (,)
      ),
    );
  }
}