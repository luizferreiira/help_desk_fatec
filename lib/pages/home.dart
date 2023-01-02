import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:help_desk_fatec/pages/contact.dart';
import 'package:help_desk_fatec/pages/history_fatec.dart';
import 'package:help_desk_fatec/pages/monitoring.dart';
import 'package:help_desk_fatec/widgets/widget_text_light.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  ImagePicker imagePicker = ImagePicker();
  File? selectedImage;
  List<String> messagesSent = [];

  final _textSentController = TextEditingController();
  final _textTo = 'luizferreiraa34@gmail.com';
  final _textSubjectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff44545c),
            iconTheme: const IconThemeData(
              color: Color(0xffffffff),
            ),
            title: MyTextLight('Help Desk Fatec'),
          ),
          body: _bodyHome(),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/fatec_logo.png'),
                    ),
                  ), child: null,


                ),
                ListTile(
                  leading: Icon(Icons.history_edu),
                  title: Text('História da fatec'),
                  iconColor: Color(0xff44545c),
                  onTap: _openHistory,
                ),
                ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text('Calendário'),
                  iconColor: Color(0xff44545c),
                  onTap: _openCalendar,
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Localização: Salas de aula'),
                  iconColor: Color(0xff44545c),
                  onTap: _openRoomLocalization,
                ),
                ListTile(
                  leading: Icon(Icons.watch_later_outlined),
                  title: Text('Horário de aulas'),
                  iconColor: Color(0xff44545c),
                  onTap: _openHourClass,
                ),
                ListTile(
                  leading: Icon(Icons.school_outlined),
                  title: Text('SIGA'),
                  iconColor: Color(0xff44545c),
                  onTap: _openSIGA,
                ),
                ListTile(
                  leading: Icon(Icons.person_search_outlined),
                  title: Text('Monitoria'),
                  iconColor: Color(0xff44545c),
                  onTap: onMonitoring,
                ),
                ListTile(
                  leading: Icon(Icons.contact_phone),
                  title: Text('Contato'),
                  iconColor: Color(0xff44545c),
                  onTap: _openContact,
                ),

                Divider(
                  color: Colors.blueGrey,
                ),

                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Fechar'),
                  iconColor: Color(0xff44545c),
                  onTap: _exitApp,
                ),
              ],
            ),
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xfff46464),
        onPressed: () => launchEmail(
          toEmail: _textTo,
          subject: _textSubjectController.text,
          message: _textSentController.text,
        ),
        child: Icon(
            Icons.send,
          color: Colors.black,
        ),
      ),
        );
  }

  _bodyHome() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFD6DBDD),
            Color(0xFFD6DBDD),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
          ],
        ),
      ),
            padding: EdgeInsets.all(5),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 70),
                reverse: true,
                child: Column(
                  children: [
                    Image.asset(
                        'assets/images/helpdesk_logo.png',
                      height: 250,
                      width: 250,
                    ),

                    SizedBox(height: 100),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'luizferreiraa34@gmail.com',
                        enabled: false,
                        prefixIcon: Icon(Icons.telegram_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      controller: _textSubjectController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.subject),
                        hintText: 'Assunto',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 5),

                    TextFormField(
                      controller: _textSentController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.message),
                        hintText: 'Mensagem',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }

  Future launchEmail({
  required String toEmail,
  required String subject,
  required String message,
  }) async {
    final url =
        "mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}";
    if(await canLaunch(url)){
      await launch(url);
    }
}

  void _openHistory() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HistoryFatec()),
    );
  }

  void _openCalendar() {
    FlutterWebBrowser.openWebPage(
        url: "https://drive.google.com/file/d/1BWxP0DkFL5i0v1nGnd_q3xmKUgCvvyPt/view",
    );
  }

  void _openRoomLocalization() {
    FlutterWebBrowser.openWebPage(
      url: "https://docs.google.com/spreadsheets/d/e/2PACX-1vRyVBX9pfvVX5W60fg9WWR-czEG4IUAc7OJPhL20M0loTkhkwpPQjMN14u-r-Pa5yJqY-sPZJCXBA8G/pubhtml?gid=375959318&single=true"
    );
  }

  void _openHourClass() async{
    FlutterWebBrowser.openWebPage(
      url: "https://fatecitapetininga.edu.br/academico/horario/",
    );
  }

  void _openSIGA() {
    FlutterWebBrowser.openWebPage(
      url: "https://siga.cps.sp.gov.br/aluno/login.aspx",
    );
  }

  void onMonitoring() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MonitoringFatec())
    );
  }

  void _exitApp() {
    Navigator.of(context).pop();
  }

  void _openContact() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => ContactFatec()),
    );
  }
}
