import 'package:app_ppr/provider/google_sign_in.dart';
import 'package:app_ppr/screens/clinicaodontologica.dart';
import 'package:app_ppr/screens/orgaosresponsaveis.dart';
import 'package:app_ppr/screens/sobre.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_ppr/screens/perfil.dart';
import 'package:app_ppr/screens/unioeste.dart';

class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Container(
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 30.0),
            child: Text("Bem vindo, " + user.displayName + ".", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17)),
          ),
          OutlineButton(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Casos clínicos',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            highlightedBorderColor: Colors.white,
            borderSide: BorderSide(color: Colors.white),
            textColor: Colors.white,
            onPressed: () {},
          ),

          OutlineButton(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Meu perfil',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            highlightedBorderColor: Colors.white,
            borderSide: BorderSide(color: Colors.white),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Perfil()
                  )
              );
            },
          ),

          OutlineButton(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Clínica odontológica',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            highlightedBorderColor: Colors.white,
            borderSide: BorderSide(color: Colors.white),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ClinicaOdonto()
                  )
              );
            },
          ),

          OutlineButton(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Unioeste',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            highlightedBorderColor: Colors.white,
            borderSide: BorderSide(color: Colors.white),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Unioeste()
                  )
              );
            },
          ),

          OutlineButton(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Órgãos responsáveis',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            highlightedBorderColor: Colors.white,
            borderSide: BorderSide(color: Colors.white),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrgaosResponsaveis()
                  )
              );
            },
          ),

          OutlineButton(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
              'Sobre o projeto',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            highlightedBorderColor: Colors.white,
            borderSide: BorderSide(color: Colors.white),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Sobre()
                  )
              );
            },
          ),

          OutlineButton(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Sair',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            highlightedBorderColor: Colors.white,
            borderSide: BorderSide(color: Colors.white),
            textColor: Colors.white,
            onPressed: () {
              final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
          ),

          Spacer(),
 Padding(
              padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 20.0),
              child: Text(
                "Caso precise de ajuda, mande um e-mail para nosso suporte ppr.suporte@protonmail.com.",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}