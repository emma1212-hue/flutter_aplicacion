import 'package:flutter/material.dart';

class ClaseScroll extends StatelessWidget {
  const ClaseScroll({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> libros = [
      {'titulo': 'Cien años de soledad', 'autor': 'Gabriel García Márquez'},
      {'titulo': 'Don Quijote de la Mancha', 'autor': 'Miguel de Cervantes'},
      {'titulo': 'El principito', 'autor': 'Antoine de Saint-Exupéry'},
      {'titulo': '1984', 'autor': 'George Orwell'},
      {'titulo': 'La sombra del viento', 'autor': 'Carlos Ruiz Zafón'},
      {'titulo': 'Rayuela', 'autor': 'Julio Cortázar'},
      {'titulo': 'Crimen y castigo', 'autor': 'Fiódor Dostoyevski'},
      {'titulo': 'Orgullo y prejuicio', 'autor': 'Jane Austen'},
      {'titulo': 'Los juegos del hambre', 'autor': 'Suzanne Collins'},
      {'titulo': 'Harry Potter y la piedra filosofal', 'autor': 'J.K. Rowling'},
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Libreria el Emma & Dam'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Primer Card
              Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.book, size: 40),
                          SizedBox(width: 8),
                          Text(
                            'Catálogo de Libros',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Explora nuestra colección de libros disponibles:',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),

              // Segundo Card con ListView
              Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: libros.length,
                    itemBuilder: (context, index) {
                      final libro = libros[index];
                      return ListTile(
                        leading: const Icon(Icons.book, color: Colors.blueAccent),
                        title: Text(libro['titulo']!),
                        subtitle: Text('Autor: ${libro['autor']}'),
                      );
                    },
                  ),
                ),
              ),

              // Tercer Card con GridView e IMÁGENES
              Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  height: 250,
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    padding: const EdgeInsets.all(8),
                    children: List.generate(
                      9,
                      (index) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/200/300?random=$index',
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              color: Colors.grey[300],
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: const Icon(
                                Icons.broken_image,
                                color: Colors.grey,
                                size: 40,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              
              const Text(
                "Desplázate hacia arriba o abajo para ver el contenido",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}