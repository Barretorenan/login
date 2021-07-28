import 'package:flutter/material.dart';
import 'package:login/View/Login.dart';
import 'package:login/View/Bolo.dart';

class SemanaEscolha extends StatefulWidget {
  @override
  _SemanaEscolhaState createState() => _SemanaEscolhaState();
}

class _SemanaEscolhaState extends State<SemanaEscolha>{
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
    children: <Widget>[
      Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          //cada botao seta o valor quantidade ai permite as adições
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
                  _3Itens();
                },
                child: const Text('3 Itens'),
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
                  _5Itens();
                },
                child: const Text('5 Itens'),
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
                  _7Itens();
                },
                child: const Text('7 Itens'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).accentColor),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            _minus();
                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 16,
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        padding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white),
                        child: Text(
                          contador.toString(),
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            _add();
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                      ),
                      Text(
                        'Pão Frances',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .display1!
                            .copyWith(fontWeight: FontWeight.w900, fontSize: 20),
                      ),
                    ],
                  ),
                ),


            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).accentColor),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        _minus();
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 16,
                      )),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    padding:
                    EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white),
                    child: Text(
                      contador.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _add();
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  Text(
                    'Pão Australiano',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .display1!
                        .copyWith(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).accentColor),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        _minus();
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 16,
                      )),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    padding:
                    EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white),
                    child: Text(
                      contador.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _add();
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  Text(
                    'Pão Doce',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .display1!
                        .copyWith(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                ],
              ),
            ),
              ],
    ),
    ),
    ],
    ),
    );

  }
  int tItens=0;
  int contador=0;

  _3Itens(){
    setState(() {
      tItens=3;
    });
  }
  _5Itens(){
    setState(() {
      tItens=5;
    });
  }
  _7Itens(){
    setState(() {
      tItens=7;
    });
  }

  _add() {
    if(contador<tItens && contador>=0) {
      setState(() {
        contador = contador + 1;
      });
    }
  }

  _minus() {
    if(contador<tItens && contador>0){
    setState ( () {
      contador = contador - 1;
    });
  }
  }
  }
