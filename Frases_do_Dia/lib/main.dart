import 'dart:math';

import 'package:flutter/material.dart';



//1-METODO MAN
//2-MATERIAL APP
//3-State full widget , para os elementos alterarem
//4-ESQUELETO APP


//1-METODO MAIN
void main() {
  //2-MATERIAL APP
  runApp(MaterialApp(
    home: Home(),
  ));
}
//3-State full widget , para os elementos alterarem
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Hamburguer",
    "Sanduiche",
    "Pizza",
    "Calabreza"
    "Batatinha"
  ];
  var _fraseGerada = "Clique aqui para gerar a frase";

  void _gerarFrase () {
    //gerar um numero randomico, e a quantidade de itens com o length !
    var numeroSorteado = Random().nextInt(_frases.length);


    setState(() {
      _fraseGerada = _frases [numeroSorteado];
    });

    print(numeroSorteado);

  }
  @override
  Widget build(BuildContext context) {
    //4-ESQUELETO APP
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body:Center(
        child:  Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.cyan)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                //adcionando o metodo criado
                onPressed: _gerarFrase,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber
                ),
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold

                  ),
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
