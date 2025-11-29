import 'package:flutter/material.dart';


class Responsivos extends StatelessWidget {
  const Responsivos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo Widget expanded'),
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.orange,
                height: 100,
                child: const Center(
                  child: Text('Home',
                  style: TextStyle(
                    fontFamily: 'Verdana',
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                ),
              )
            ),

             Expanded(
              flex: 2,
              child: Container(
                color: const Color.fromARGB(255, 0, 235, 39),
                height: 100,
                child: const Center(
                  child: Text('Menú principal',
                  style: TextStyle(
                    fontFamily: 'Verdana',
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                ),
              )
            ),

             Expanded(
              child: Container(
                color: const Color.fromARGB(255, 42, 0, 230),
                height: 100,
                child: const Center(
                  child: Text('Contacto',
                  style: TextStyle(
                    fontFamily: 'Verdana',
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                ),
              )
            )
          ],
        )
      ),
    );
  }
}