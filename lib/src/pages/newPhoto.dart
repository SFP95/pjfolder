import 'dart:html';
import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewPhoto extends StatefulWidget {
  @override
  State<NewPhoto> createState() => _NewPhotoState();
}

class _NewPhotoState extends State<NewPhoto> {
  late File _image;

  Future<void> _getImageFromCamera() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = io.File(pickedFile.path) as File;
      });
    }
  }

  Future<void> _getImageFromGallery() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = io.File(pickedFile.path) as File;
      });
    }
  }

  Future<void> _uploadImage() async {
    // Aquí podrías escribir el código para subir la imagen a la base de datos
    // usando la librería que desees, por ejemplo Firebase Storage, Amazon S3, etc.
    // El código dependerá de la librería que uses y de la forma en que hayas configurado
    // tu base de datos.
    // Si necesitas ayuda específica para subir la imagen a tu base de datos, por favor
    // proporciónanos más detalles y te podremos ayudar mejor.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[800],
          size: 30,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded), // Icono a mostrar
          onPressed: () {
            Navigator.popAndPushNamed(context, '/home');
          },
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey.shade400,
        title: Text('New Img',style: TextStyle(fontSize: 20,color: Colors.grey[800])),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_image != null)
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(_image as io.File),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: _getImageFromCamera,
            icon: Icon(Icons.camera_alt),
            label: Text('Tomar foto'),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: _getImageFromGallery,
            icon: Icon(Icons.image),
            label: Text('Elegir de galería'),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: _uploadImage,
            icon: Icon(Icons.cloud_upload),
            label: Text('Subir imagen'),
          ),
        ],
      )
    );
  }
}
