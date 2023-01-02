import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:help_desk_fatec/pages/home.dart';
import 'package:help_desk_fatec/pages/monitors.dart';
import 'package:help_desk_fatec/widgets/widget_text_light.dart';

class MonitoringFatec extends StatefulWidget {
  const MonitoringFatec({Key? key}) : super(key: key);

  @override
  State<MonitoringFatec> createState() => _MonitoringFatecState();
}

class _MonitoringFatecState extends State<MonitoringFatec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff44545c),
        title: Row(
          children: [
            IconButton(onPressed: _backMyHome, icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            ),
            MyTextLight('Monitoria'),
          ],
        ),
      ),
      body: _bodyMonitoring(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _seeMonitors,
        label: Text('Ver monitores'),
        icon: Icon(Icons.person_search_outlined),
        backgroundColor: Color(0xff44545c),
      ),
    );
  }

  _bodyMonitoring() {
    return Container(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: HtmlWidget(
          "<h3 align='center'> O QUE É MONITORIA? </h3>"
          "<p align='justify'> A monitoria é uma forma específica de apoio ao ensino e a aprendizagem vinculada às necessidades de formação acadêmica dos alunos. </p><br/>"
              "<h3 align='center'> O QUE OS MONITORES FAZEM?</h3>"
              "<p align='justify'>Os monitores auxiliam os alunos que apresentam dificuldades ou dúvidas em relação a uma determinada "
              "disciplina, auxiliando-os em atividades condizentes com seu grau de conhecimento e experiência, sempre contando com a supervisão"
              " do professor responsável pela disciplina, por quem serão selecionados.</p><br>"
              "<p align='justify'>Na seleção, o professor deverá verificar se o aluno atende"
              " aos seguintes requisitos: Ter cursado a disciplina, possuindo no mínimo 85% de freqüência e 80 % de "
              " e Possuir disponibilidade no horário estipulado pelo professor para realização da monitoria. O monitor recebe salário? Não, o aluno monitor"
              "recebe mensalmente uma bolsa auxílio no valor aproximado de 180.00, desde que tenha cumprido 8 horas-aula semanais.</p><br>"
              "<h3 align='center'> CABE AO PROFESSOR:</h3>"
              "<p> - Selecionar o aluno monitor;</p>"
              "<p> - Enviar ao monitor o plano de trabalho e as atividades a serem desenvolvidas;</p>"
              "<p> - Acompanhar semanalmente o desenvolvimento das atividades descritas no plano de trabalho.</p><br>"
              "<h3 align='center'> CABE AO MONITOR:</h3>"
              "<p> - Ser assíduo na monitoria;</p>"
              "<p> - Preencher e entregar o diário de atividades, na Central de Estágios, ao final de cada monitoria;</p>"
              "<p> - Controlar os alunos presentes, durante cada monitoria.</p><br>"

        ),
      ),
    );
  }

  void _backMyHome() {

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MyHome()),
    );

  }

  void _seeMonitors() {

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => Monitors()),
    );

  }
}
