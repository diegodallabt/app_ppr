import 'package:flutter/material.dart';

class ClinicaOdonto extends StatelessWidget {
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
            child: Text("Clínica odontológica", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            child: Text("Inaugurada em 1999, a Clínica Odontológica da Unioeste serve de infraestrutura aos cursos de graduação e pós-graduação em Odontologia, onde são desenvolvidas atividades de ensino, pesquisa e extensão, proporcionando tratamento odontológico gratuito à população de Cascavel e região.\n\nCom o credenciamento do Centro de Especialidades Odontológicas (CEO), a Clínica Odontológica da Unioeste passou a fazer parte do Sistema Único de Saúde -SUS, setornando o serviço de referência em odontologia nas área de cirurgia, periodontia, endodontia, estomatogia e atendimento a pacientes com necessidades especiais de Cascavel e região.", style: TextStyle(color: Colors.white, fontSize: 18)),
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
