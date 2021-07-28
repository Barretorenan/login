import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:login/PreferencesKeys.dart';
import 'package:login/View/Cadastro.dart';
import 'package:login/View/Servicos.dart';
import 'package:login/View/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState()=>_LoginState();

}
class _LoginState extends State<Login>{
  TextEditingController _mailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right:40, left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/icons/logo.jpg"),
            ),

            SizedBox(
              height: 50,
            ),
            //campo de texto da senha usuario
            TextFormField(
              controller: _mailController,
              keyboardType: TextInputType.emailAddress,
              decoration:InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color:Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  icon: const Padding(
                    padding: const EdgeInsets.only(top: 15.0,right: 5,left: 5),
                    child:  const Icon(Icons.person),
                  )
              ),
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(
              height: 20,
            ),
            //campo de texto da senha
            TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Senha',
                    icon: const Padding(
                      padding: const EdgeInsets.only(top: 15.0,right: 5,left: 5),
                      child:  const Icon(Icons.lock),
                    )
                )
            ),

            //recuperar senha
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed:(

                    ) {
                },
                child: Text('Recuperar Senha'),
              ),

            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //cor da borda
                      // side: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: () {
                 // _doLogin();

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Servicos()),
                  );


                },
                child: const Text('Login'),
              ),
            ),
            //podemos colocar o padding e o divider como filho
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                onPressed: () {
                  // navegando entre paginas
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
                child: const Text('Cadastrar'),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            //row para adicionar em linha
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ],
        ),
      ),

    );
  }



  //reatiar login

  //void _doLogin()async{
  //  String mailForm= this._mailController.text;
  //  String passwordForm= this._passwordController.text;

  //  User savedUser= await _getSavedUser();
 // }
 //Future<User> _getSavedUser() async{
   // SharedPreferences prefs=await SharedPreferences.getInstance();
  //  String jsonUser=prefs.getString(PreferenceKeys.activeUser);
   // print(jsonUser);

   // Map<String,dynamic>mapUser=json.decode(jsonUser);
  //  User user=User.fromJson(mapUser);
   // return user;
  //}

}



