import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:help_desk_fatec/pages/home.dart';
import 'package:help_desk_fatec/widgets/widget_text_light.dart';

class ContactFatec extends StatefulWidget {
  const ContactFatec({Key? key}) : super(key: key);

  @override
  State<ContactFatec> createState() => _ContactFatecState();
}

class _ContactFatecState extends State<ContactFatec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff44545c),
        title: Row(
          children: [
            IconButton(
                onPressed: _backMyHome,
                icon: Icon(
                    Icons.arrow_back,
                  color: Colors.white,
                ),
            ),
            MyTextLight('Contatos'),
          ],
        ),
      ),
      body: _bodyContact(),
    );
  }

  void _backMyHome() {
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => MyHome()),
    );
  }

  _bodyContact() {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.call),
          title: Text('Telefone'),
          subtitle: Text(' (15) 3272-7916 / 3272-7732 / 3272-1165'),
        ),
        ListTile(
          leading: Icon(Icons.web),
          title: Text('Site'),
          subtitle: Text('https://fatecitapetininga.edu.br/'),
          onTap: _openSiteFatec,
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          title: Text('E-mail Secretaria'),
          subtitle: Text('f131acad@cps.sp.gov.br'),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          title: Text('E-mail Direção'),
          subtitle: Text('f131dir@cps.sp.gov.br'),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          title: Text('E-mail Coordenação de ADS'),
          subtitle: Text('danilo.gomes9@fatec.sp.gov.br'),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          title: Text('E-mail Coordenação de Agronegócio'),
          subtitle: Text('jose.favoretto@fatec.sp.gov.br'),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          title: Text('E-mail Coordenação de Comex'),
          subtitle: Text('silvio.rosa4@fatec.sp.gov.br'),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          title: Text('E-mail Coordenação de GPI'),
          subtitle: Text('antonio.rubio@fatec.sp.gov.br'),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          title: Text('E-mail Coordenação de GA'),
          subtitle: Text('flavia.cavalini@fatec.sp.gov.br'),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined),
          title: Text('E-mail Orientador Gestão Empresarial'),
          subtitle: Text('marcelo@fatecitapetininga.edu.br'),
        ),

      ],
    );
  }

  void _openSiteFatec() async {
    FlutterWebBrowser.openWebPage(
        url: 'https://fatecitapetininga.edu.br/',
    );
  }
}
