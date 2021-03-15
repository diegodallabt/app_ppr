import 'package:app_ppr/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class Perfil extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: Colors.redAccent,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 25.0),
              child: Text("Meu perfil",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32)),
            ),

            CircleAvatar(
              maxRadius: 65,
              backgroundImage: NetworkImage(user.photoURL),
            ),
            SizedBox(height: 20),
            Text(
              'Nome:',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            
            Container(
              width: 265,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 7.0),
                child: Text(
                  user.displayName,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 19),
                  textAlign: TextAlign.center,
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
              
            ),
            SizedBox(height: 25),
            Text(
              'E-mail:',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),

            Container(
              width: 265,
              child:
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 7.0),
                child: Text(
                  user.email,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 19),
                  textAlign: TextAlign.center,
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 45),
            OutlineButton(
              child: Container(
                width: 170,
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Apagar a conta',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              highlightedBorderColor: Colors.white,
              borderSide: BorderSide(color: Colors.white),
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: 15),
            OutlineButton(
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
          ],
        ),
      ),
    );
  }
}
