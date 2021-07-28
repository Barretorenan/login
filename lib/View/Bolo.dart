import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bolo extends StatefulWidget{
  @override
  _BoloState createState()=>_BoloState();

}
class _BoloState extends State<Bolo>{
  @override
  Widget build(BuildContext context){
    return Scaffold(body:SingleChildScrollView(
    child: Column(
      children: [
        //Massa
        SizedBox(
          width:double.infinity,
          height: 200,
          child: Image.asset("assets/icons/logo.jpg"),
      ),
        //Recheios
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(0),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
          ),
          child: Center(
            child: Text(
              "Massa",
              textAlign: TextAlign.center,
            ),
          ),
        ),


        Row(
          children: [
            Container(
              alignment: Alignment.center,
            child: Column(
              children: [
                IconButton(
                  icon:  Image.asset("assets/icons/logo.jpg"),
                  iconSize: 60,
                  onPressed: () {},
                ),
                IconButton(
                  icon:  Image.asset("assets/icons/logo.jpg"),
                  iconSize: 60,
                  onPressed: () {},
                ),
              ],
            ),
          ),

          Column(
            children: [
              IconButton(
                icon:  Image.asset("assets/icons/logo.jpg"),
                alignment: Alignment.center,
                padding: new EdgeInsets.all(0),
                iconSize: 60,
                onPressed: () {},
              ),
              IconButton(
                icon:  Image.asset("assets/icons/logo.jpg"),
                iconSize: 60,
                onPressed: () {},
              ),
            ],
          )
          ],
        ),


        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(0),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
          ),
          child: Center(
            child: Text(
              "Recheio",
              textAlign: TextAlign.center,
            ),
          ),
        ),

        Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  IconButton(
                    icon:  Image.asset("assets/icons/logo.jpg"),
                    iconSize: 60,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon:  Image.asset("assets/icons/logo.jpg"),
                    iconSize: 60,
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Column(
              children: [
                IconButton(
                  icon:  Image.asset("assets/icons/logo.jpg"),
                  alignment: Alignment.center,
                  padding: new EdgeInsets.all(0),
                  iconSize: 60,
                  onPressed: () {},
                ),
                IconButton(
                  icon:  Image.asset("assets/icons/logo.jpg"),
                  iconSize: 60,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),









        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(0),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
          ),
          child: Center(
            child: Text(
              "Cobertura",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  IconButton(
                    icon:  Image.asset("assets/icons/logo.jpg"),
                    iconSize: 60,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon:  Image.asset("assets/icons/logo.jpg"),
                    iconSize: 60,
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Column(
              children: [
                IconButton(
                  icon:  Image.asset("assets/icons/logo.jpg"),
                  alignment: Alignment.center,
                  padding: new EdgeInsets.all(0),
                  iconSize: 60,
                  onPressed: () {},
                ),
                IconButton(
                  icon:  Image.asset("assets/icons/logo.jpg"),
                  iconSize: 60,
                  onPressed: () {},
                ),
              ],
            )
          ],
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
            onPressed: () {//introducao do carrinho dos itens
              //  _doSignUp();
            },
            child: const Text('Finalizar cadastro'),
          ),
        ),
        //Cobertura
      ],
    ),
    ),
    );
  }
}
