import 'package:flutter/material.dart';
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
        primarySwatch: Colors.brown,
        backgroundColor: Colors.brown.shade100
      ),
      routes: {
        '/':(context)=> LoginPage(),
        '/register': (context) => RegisterPage(),
        '/gallery': (context) => GalleryPage(),
        '/dice': (context) => DicePage(),
        '/characters': (context) => CharacterListPage(),
        '/character_sheet': (context) => CharacterSheetPage(),
        '/character_creation': (context) => CharacterCreationPage(),
      },
      initialRoute: '/character_creation',
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
