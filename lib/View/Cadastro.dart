import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login/View/CadastroServico.dart';
import 'package:login/View/Servicos.dart';
import 'package:login/View/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState()=>_CadastroState();

}
class _CadastroState extends State<Cadastro>{

  TextEditingController _nameController = TextEditingController();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right:40, left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/icons/logo.jpg"),
            ),

            SizedBox(
              height: 50,
            ),
            //campo de texto da Nome usuario
            TextFormField(
              controller: _nameController,
              keyboardType: TextInputType.emailAddress,
              decoration:InputDecoration(
                  labelText: "Nome",
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

            //campo de email
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
                    child:  const Icon(Icons.mail),
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
            SizedBox(
              height: 20,
            ),

            //campo confirmar senha
            TextFormField(
              controller: _confirmController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Confirmar Senha',
                    icon: const Padding(
                      padding: const EdgeInsets.only(top: 15.0,right: 5,left: 5),
                      child:  const Icon(Icons.lock),
                    )
                )
            ),
            SizedBox(
              height: 20,
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
                //  _doSignUp();
                },
                child: const Text('Finalizar cadastro'),
              ),
            ),
            SizedBox(
              height: 30,
            ),

      ],
        ),
    ),
    );
  }



  //void _doSignUp(){
  //  if(_formKey.currentState.validate()){
  //    CadastroServico().signUp(
  //        _mailController.text, _passwordController.text);
  //  }else{
  //    print("invalido");
  //  }
 // }
  void _saveUser(User user)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("Login_User_Infos",json.encode(user.toJson()));
  }
}


