import 'package:flutter/material.dart';
import 'package:login/View/Login.dart';
import 'package:login/View/Bolo.dart';
import 'SemanaEscolha.dart';
class Servicos extends StatefulWidget {
  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 40,
              right: 40,
            ),
            height: size.height * .35,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          //infos na parte do back
          SizedBox(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                FloatingActionButton(
                    onPressed: () {
                      // arrumar alinhamento
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    tooltip: 'xxx',
                    child: Icon(Icons.arrow_back_outlined)),
              ],
            ),
          ),
          Column(
            //ALINHAR PARA A ESQUERDA E O BOtAO NA ESQUERDA MAIS PRO MEIO
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Text(
                'Bem vindo a Kipão \nRenan',
                //MUdar a fonte do nome da pessoa
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .display1!
                    .copyWith(fontWeight: FontWeight.w900, fontSize: 30),
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: Image.asset("assets/icons/logo.jpg"),
              ),
            ],
          ),

          //OPCOES DE COMPRA
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 300,
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
                      // navegando entre paginas
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bolo()),
                      );
                    },
                    child: const Text('Encomendar bolo'),
                  ),
                ),
                SizedBox(
                  width: 300,
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
                      // navegando entre paginas
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: const Text('Mercearia'),
                  ),
                ),
                SizedBox(
                  width: 300,
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
                      // navegando entre paginas
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SemanaEscolha()),
                      );
                    },
                    child: const Text('Assinatura'),
                  ),
                ),
              ],
            ),
          ),
        ],
        //barra inferior de transito entre setores
      ),
    );
  }
}
