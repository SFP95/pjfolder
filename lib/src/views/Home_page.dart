import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey.shade800,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(28, 200, 28, 28),
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 30.3,
              crossAxisSpacing: 30.3,
              crossAxisCount: 2,
              children: [
                Tooltip(
                  message: "DADOS",
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 100,
                        onPressed: () {
                          Navigator.pushNamed(context, '/dice');
                        },
                        icon: Image.asset(
                          'assets/images/dado.png',
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Text(
                        "Dice",
                        style: TextStyle(fontSize: 30, color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                Tooltip(
                  message: "Lista de Personajes",
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 100,
                        onPressed: () {
                          Navigator.pushNamed(context, '/characters_list');
                        },
                        icon: Image.asset(
                          'assets/images/nota.png',
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Text(
                        "Characters",
                        style: TextStyle(fontSize: 30, color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                Tooltip(
                  message: "Galeria",
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 100,
                        onPressed: () {
                          Navigator.pushNamed(context, '/gallery');
                        },
                        icon: Image.asset(
                          'assets/images/galeria.png',
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Text(
                        "Galery",
                        style: TextStyle(fontSize: 30, color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                Tooltip(
                  message: "Log / Sing In",
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 100,
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        icon: Image.asset(
                          'assets/images/perfil.png',
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Text(
                        "Sing in",
                        style: TextStyle(fontSize: 30, color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
