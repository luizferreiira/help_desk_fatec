import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:help_desk_fatec/pages/home.dart';
import 'package:help_desk_fatec/widgets/widget_title.dart';

class HistoryFatec extends StatefulWidget {
  const HistoryFatec({Key? key}) : super(key: key);

  @override
  State<HistoryFatec> createState() => _HistoryFatecState();
}

class _HistoryFatecState extends State<HistoryFatec> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff44545c),
        centerTitle: true,
        title: Row(
          children: [
            IconButton(
                onPressed: _backMyHome,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
            ),
          ],
        ),
      ),
        body: _bodyHistoryFatec(),
    );
  }

  void _backMyHome() {

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MyHome()),
    );

  }

  _bodyHistoryFatec() {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          ListTile(
            title: MyTitle('História da Fatec'),
          ),
          Divider(
            height: 50,
          ),
          const ListTile(
            title: HtmlWidget(
              '<p align="justify">  A história da Fatec de Itapetininga começa no governo de Geraldo Alckimin, quando o Governo do '
                  'Estado de São Paulo resolve aumentar a oferta do número de vagas ao ensino superior através de suas faculdades de tecnologia.<br><br>'
                  'Na época em que foi levada a efeito a idéia de ampliação das Fatec’s, o Sr. Ricardo Barbará, '
                  'realizando seu segundo mandato como prefeito desta cidade, conseguiu a promessa verbal do Sr. Henrique Meirelles,'
                  'então Secretário de Desenvolvimento, para a instalação de uma unidade em Itapetininga. <br><br>'
                  'Após término do seu mandato, em 2003, sucedeu-lhe o Sr. Roberto Ramalho, então professor universitário,'
                  'que tornou realidade a vinda da Fatec para esta cidade, oficiando documento, assinado por vários prefeitos de cidades vizinhas,'
                  'solicitando formalmente a vinda da Fatec para Itapetininga. <br><br>'
                  'Foram então mais de dois anos de espera, de muitas idas e vindas para São Paulo,'
                  'de reuniões envolvendo pessoal das Secretarias da Educação, do Desenvolvimento, e do Centro Paula Souza; não se esquecendo de registrar aqui,'
                  'as reuniões levadas a efeito na sede da Associação dos Engenheiros da Região de Itapetininga'
                  'quando a sociedade Itapetiningana juntava esforços de empresários e autoridades, todos desejosos de ver frutificar este sonho há muito esperado.'
                  'Finalmente, em 2005, consolidava-se o local a ser instalada a Fatec.'
                  'A Secretaria de Educação cede à Secretaria do Desenvolvimento uma parte do prédio onde funcionava'
                  'a Diretoria de Ensino da Região de Itapetininga – a Derita – mais especificamente no local onde funcionou o antigo Cefam'
                  '(Centro Específico de Formação e Aperfeiçoamento do Magistério) instituição desativada pelo governo estadual desde 2004,'
                  'de modo que a Prefeitura deu início às obras de reformas necessárias para o acolhimento do primeiro curso a ser aqui instalado,'
                  'o Curso Superior de Tecnologia em Agronegócio. <br><br>'
                  'Era, pois um curso ‘novo’ sob todos os aspectos, pois se tratava do primeiro curso do gênero das Fatec’s do Estado de São Paulo.'
                  'Dessa forma, a Prefeitura da cidade se encarregou de organizar um grupo de notáveis, ilustres cidadãos, autoridades e técnicos da área educacional,'
                  'que pudesse realizar estudos e debater o conteúdo programático desse curso, de modo que atendesse às necessidades da região e à sua vocação visivelmente agrícola. <br><br>'
                  'Assim, o decreto estadual número 50.574 de 02 de março de 2006, cria a Faculdade de Tecnologia de Itapetininga a ser instalada à Rua Dr. João Vieira de Camargo,'
                  '104, Vila Barth, município de Itapetininga. São designados para implantar o curso dois experientes funcionários do Centro Paula Souza:'
                  'a então Assistente Técnica de Direção, Sra. Silvana dos Santos De Marchi (que permaneceu na instituição até a colação de grau da primeira turma de Agronegócio,'
                  'ocorrida em fevereiro de 2009) e o Diretor Professor Lauro Carvalho de Oliveira'
                  '(que permaneceu na instituição até setembro de 2008 sendo substituído pela Professora Luciana de Mattos Moraes). <br><br>'
                  'Para coordenar o Curso de Tecnologia em Agronegócio foi designado o Professor Cesário de Moraes Leonel Ferreira. <br><br>'
                  'Pouco antes do início das aulas do primeiro semestre de 2008,'
                  'foram realizados os demais concursos públicos quando praticamente todas as disciplinas do Curso de Agronegócio passaram a contar'
                  'com professores contratados por prazo indeterminado. <br><br>'
                  'Até aquele momento, a instituição contava, então com uma estrutura física formada por salas para Diretoria, Secretaria Acadêmica,'
                  'Coordenação de Curso, Sala de Professores, um Laboratório de Informática, Biblioteca, Sala de Estudos e cinco Salas de Aula,'
                  'todas essas dependências no nível superior do prédio. Além disso, no pavimento térreo, havia uma cozinha (onde foram instalados o pessoal da limpeza e o da segurança),'
                  'sanitários masculino e feminino e um pátio coberto. <br><br>'
                  'No encerramento do último ciclo da primeira turma a se formar no Curso de Agronegócio, fato este ocorrido ao final do segundo semestre de 2008,'
                  'o quadro de professores já estava formatado e, no Estado de São Paulo outras Fatec’s também já ofereciam o Curso de Agronegócio. <br><br>'
                  'Ainda no segundo semestre de 2008, tiveram início as atividades do segundo curso instalado na Fatec de Itapetininga:'
                  'o Curso Superior de Tecnologia em Informática para Gestão de Negócios. Para os dois primeiros ciclos as disciplinas eram muito semelhantes às de Agronegócio,'
                  'assim muitos professores da unidade, já concursados puderam então ministrar as aulas dessas disciplinas.<br><br>'
                  'Em Fevereiro de 2010, inicia-se então o 3º curso desta unidade. Após reunião pública para sugestão de um novo curso,'
                  'o Centro Paula Souza opta pela instalação do Curso de Comércio Exterior inicialmente no período vespertino somente. <br><br>'
                  'Em 10 de Setembro de 2010, é sancionada a lei nº 13.672, que da denominação à Fatec de Itapetininga. A partir dessa data,'
                  'nossa unidade, passa a denominar-se Faculdade de Tecnologia de Itapetininga – Professor Antonio Belizandro Barbosa de Rezende.<br><br>'
                  'A vinda da Fatec para Itapetininga foi de fundamental importância, pois se trata da primeira Faculdade Pública,'
                  'oferecendo cursos de nível superior gratuitos, mantida pelo Governo do Estado de São Paulo. Permite-se assim aos jovens,'
                  'pertencentes às famílias de Itapetininga e região, a possibilidade de formação superior de altíssima qualidade.'
                  'Além disso, a região ganha profissionais altamente especializados no atendimento dos setores de agronegócio, de informática,'
                  'e comércio exterior, que são hoje, os campos mais promissores do mercado de trabalho no mundo. <br><br>'

                  '<b>Fonte:</b> <i>Diário Oficial do Poder Legislativo, p.45, 6 de Novembro de 2008.</i></p>'
            ),
          ),
        ],
      ),
    );
  }
}
