import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  /**
   *  void btnPressed(BuildContext context) async{
      //print("FUNCIONO  --  "+inputUser.getText()+"--"+ inputPss.getText());
      try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: inputUser.getText(),
      password: inputPss.getText(),
      );
      //print(' -- ESTOY DENTRO ---- Bienvenido '+inputUser.getText());
      Navigator.of(context).popAndPushNamed('/onBoarding');

      } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
      txt.text="----- The password provided is too weak -----";
      } else if (e.code == 'email-already-in-use') {
      txt.text="---- Ya existe una cuenta con ese email -----";
      }
      } catch (e) {
      print(" NO FUNCIONO "+e.toString());
      }
      }
   */

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius:BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[800],
                    ),
                    controller: _usernameController,
                    decoration: InputDecoration(labelText: 'User Name'),
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[800],
                    ),
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[800],
                    ),
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                ElevatedButton(
                  style:  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                  ),
                  onPressed: () {
                    /**
                     *  onPressed:(){
                        if(inputPss.getText()==inputRpPss.getText()){
                        btnPressed(context);
                        }else{
                        txt.text="ERROR! LAS CONSTRASELAS NO COINCIDEN";
                        }
                        },

                     */
                  },
                  child: Text('Sign up', style: TextStyle(color: Colors.grey[800],fontSize: 20)),
                ),
                ElevatedButton(
                  style:  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/home');
                  },
                  child: Text('Cancel', style: TextStyle(color: Colors.grey[800],fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
