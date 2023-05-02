import 'package:flutter/material.dart';
import 'package:pjfolder/src/pages/Home_page.dart';
import 'package:pjfolder/src/pages/character_creation_page.dart';
import 'package:pjfolder/src/pages/character_list_page.dart';
import 'package:pjfolder/src/pages/character_sheet_page.dart';
import 'package:pjfolder/src/pages/dice_page.dart';
import 'package:pjfolder/src/pages/gallery_page.dart';
import 'package:pjfolder/src/pages/login_page.dart';
import 'package:pjfolder/src/pages/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'RGS - Role Game System',
      theme: ThemeData(
        primaryColor: Colors.grey.shade800, // Color primario
        accentColor: Colors.grey.shade800, // Color secundario
        backgroundColor: Colors.grey, // Color de fondo
        errorColor: Colors.red.shade400, // Color de alerta
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/':(context)=> HomePage(),
        '/login':(context)=> LoginPage(),
        '/register': (context) => RegisterPage(),
        '/gallery': (context) => GalleryPage(),
        //'/newPhoto': (context) => NewPhoto(),
        '/dice': (context) => DicePage(),
        '/characters_list': (context) => CharacterListPage(),
        '/character_sheet': (context) => CharacterSheetPage(),
        '/character_creation': (context) => CharacterCreationPage(),
      },
      initialRoute: '/',
      /*
      home: Scaffold(
        appBar: AppBar(
          title: Text('RGS - Role Game System'),
        ),
        body: Center(
          child: Text('Bienvenido a Role Game System'),
        ),
      ),*/

    );
  }
}
