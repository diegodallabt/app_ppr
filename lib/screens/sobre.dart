import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: Colors.redAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 20.0),
              child: Text("Sobre o projeto", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27)),
            ),

      Padding(
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Este aplicativo foi desenvolvido com o intuito de apresentar um passo a passo da confecção de próteses parciais removíveis (PPR). Sendo assim, o aplicativo apresenta alguns casos clínicos nos quais você pode treinar seu conhecimento sobre o desenvolvimento de uma PPR.\n\nOs autores responsáveis pelo desenvolvimento desse projeto são:\n", style: TextStyle(color: Colors.white, fontSize: 18)),
            Text("Professor orientador", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            Text("Prof. Dr. Márcio Mendonça\n", style: TextStyle(color: Colors.white, fontSize: 18)),
            Text("Dicentes",style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            Text("Diego Dalla Bernardina Thedoldi\nBruno Dalbosco", style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),


            Padding(
              padding: EdgeInsets.fromLTRB(110, 40, 0 , 0),
              child: OutlineButton(
                child: Container(
                  width: 170,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Voltar ao menu',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                highlightedBorderColor: Colors.white,
                borderSide: BorderSide(color: Colors.white),
                textColor: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),

          ],

        ),

      ),
    );
  }
}