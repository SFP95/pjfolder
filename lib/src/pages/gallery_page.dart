import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Galería'),
    ),
    body: GridView.count(
    crossAxisCount: 2,
    children: List.generate(10, (index) {
    return Center(
    child: Image.network('https://via.placeholder.com/150'), // Aquí puedes reemplazar las URLs de las imágenes con las que obtengas de tu servicio de imágenes
    );
    }),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    // Implementar la lógica para agregar imágenes aquí
    },
    child: Icon(Icons.add),
    ),
    );
  }
}
