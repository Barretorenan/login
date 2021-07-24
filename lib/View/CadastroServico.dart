import 'dart:convert';
import 'package:http/http.dart ' as http;
import 'Rotas.dart';

class CadastroServico{
  signUp(String email,String password) async {
    http.Response response = await http.post(
      Uri.parse(Rotas().signIn()),
      body: json.encode({
       "email":email,
        "password":password,
        "returnSecureToken":true,
      }
      ),
    );
    print(response.body);
  }
}