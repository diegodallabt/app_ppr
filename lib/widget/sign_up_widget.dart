import 'package:app_ppr/widget/google_signup_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() => Container(
    color: Colors.redAccent,
    child: Column(
    children: [
      Spacer(),
      Align(
        alignment: Alignment.center,
        child: Container(
            width: 203,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
              "Aplicativo de Próteses Parciais Removíveis",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ),
      GoogleSignupButtonWidget(),
      SizedBox(height: 12),
      Text(
        'Crie ou entre com sua conta Google.',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      Spacer(),
      Padding(
        padding: EdgeInsets.fromLTRB(15.0, 0.0, 5.0, 20.0),
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
