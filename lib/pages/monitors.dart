import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:help_desk_fatec/pages/monitoring.dart';
import 'package:help_desk_fatec/widgets/widget_text_light.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Monitors extends StatefulWidget {
  const Monitors({Key? key}) : super(key: key);

  @override
  State<Monitors> createState() => _MonitorsState();
}

class _MonitorsState extends State<Monitors> {

  final List<String> titles = ["", "", "", "",];

  final List<Widget> images = [
    Image.asset(
      'assets/images/monitores1.jpeg',
    ),
    Image.asset(
      'assets/images/monitores2.jpeg',
    ),
    Image.asset(
      'assets/images/monitores3.jpeg',
    ),
    Image.asset(
      'assets/images/monitores4.jpeg',
    ),
  ];

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
            0xff44545c),
        title: Row(
          children: [
            IconButton(
              onPressed: _backMonitoringFatec,
              icon: Icon(
                Icons
                    .arrow_back,
                color: Colors
                    .white,
              ),
            ),
            MyTextLight(
                'Horários Monitores 2º Semestre'),
          ],
        ),
      ),
      body: _bodyMonitors(),
    );
  }

  void _backMonitoringFatec() {
    Navigator
        .of(
        context)
        .pushReplacement(
      MaterialPageRoute(
          builder: (
              context) =>
              MonitoringFatec()),
    );
  }

  _bodyMonitors() {

    return SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/jardim_fatec.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: VerticalCardPager(
                    titles: titles,
                    images: images,
                    initialPage: 1,
                    align: ALIGN.CENTER,
                  ),
                ),
            ),
          ],
        ),
    );
  }
}
