import 'package:flutter/material.dart';

class OrgaosResponsaveis extends StatelessWidget {
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
                padding: EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 0.0),
                child: Text("Órgãos responsáveis",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27)),
            ),



            Padding(
              padding: EdgeInsets.fromLTRB(70.0, 20.0, 0.0, 0.0),
              child: Column(
                children: [
                  Image.asset('imgs/cnpq.jpg', height: 200),
                  Text("www.cnpq.br\n",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Image.asset('imgs/unioeste.jpg', height: 160),
                  Text("www.unioeste.br",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
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
