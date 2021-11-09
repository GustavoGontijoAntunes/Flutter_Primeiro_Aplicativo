import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  /*Text formata(String valor) {
    return Text(
      valor,
      style: TextStyle(
        fontSize: 20,
        color: Colors.blue,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        letterSpacing: 5,
        wordSpacing: 5,
        decoration: TextDecoration.none,
      ),
    );
  }*/

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /*return Container(
      child:
      Column(
        children: [
          formata("Texto 1"),
          Padding(
              padding: EdgeInsets.all(10)
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text("Clique aqui")
          ),
          Image.asset(
            "images/Perfil.jpeg",
            fit: BoxFit.fitHeight,
            height: 100,
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 5,
        )
      ),
    );*/

    /*
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "App 1"
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Text(
          "Conteudo"
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        child: Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                      "voltar"
                  )
              )
            ]
        ),
      ),
    );*/

    var resposta = 0;

    calcular() {
      setState(() {
        resposta = 10;
      });
    }

    body() {
      return Column(
        children: [
          Text("Informe seus dados:"),
          ElevatedButton(
            onPressed: calcular,
            child: Text("Calcular")
          ),
          Text("Resposta: " + resposta.toString()),
        ]
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("IMC"),
      ),
      body: body(),
    );
  }
}
