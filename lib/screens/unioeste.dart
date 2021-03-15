import 'package:flutter/material.dart';

class Unioeste extends StatelessWidget {
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
              child: Text("Unioeste", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27)),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Text("A Universidade Estadual do Oeste do Paraná (Unioeste) é uma instituição pública brasileira de ensino superior mantida pelo Governo do Estado do Paraná com sede em Cascavel.\n\nPossui campi em Cascavel, Foz do Iguaçu, Francisco Beltrão, Marechal Candido Rondon e Toledo.", style: TextStyle(color: Colors.white, fontSize: 18)),
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