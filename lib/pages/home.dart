import 'package:flutter/material.dart';
import 'package:resume_flutter/components/widgets.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  final me = GlobalKey();
  final work = GlobalKey();
  final about = GlobalKey();
  final contact = GlobalKey();

  Home({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "fundo.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 90,
            backgroundColor: const Color(0xFF0F0F0F),
            flexibleSpace: NavBar(
                me: me,
                about: about,
                work: work,
                contact: contact,
                scrollController: _scrollController),
          ),
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      // ME Section - Descrição de tecnologias e experiência
                      Expanded(
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Column(children: [
                          TextTopics(
                              key: me,
                              topic: '<me>',
                              subTopic1: 'Igor Lacivita',
                              subTopic2: 'Application Developer - Front-End'),
                          TextTopics(
                              key: about,
                              topic: '<about>',
                              subTopic1: 'Sobre mim',
                              subTopic2:
                                  'Tenho 23 anos, moro em São Paulo, e sou formado em Engenharia da Computação pela Faculdade Engenheiro Salvador Arena. Sempre gostei de programação e encontrei no desevolvimento front-end uma oportunidade de explorar minhas habilidades de uma forma criativa e profissional'),
                          const TextTitle(title: 'Work Experiences'),
                          const TextDesc(
                            subTopic1: 'IBM',
                            subTopic2: 'Abr. 2021 - Atual',
                            subTopic3:
                                'Atuação na área de sustentaçaõ e na área de desenvolvimento Angular e Java para aplicativos voltado a sistemas bancários',
                          ),
                          const TextDesc(
                            subTopic1: 'IBM - Estágio',
                            subTopic2: 'Dez. 2020 - Abr. 2021',
                            subTopic3:
                                'GBS Associate - Programa de estágio com foco no aprendizado de programação',
                          ),
                          const TextDesc(
                            subTopic1: 'NTX Solutions - Estágio',
                            subTopic2: 'Out. 2020 - Nov. 2021',
                            subTopic3:
                                'Programa de estágio com foco no aprendizado de criação e teste de formulários e serviço de HelpDesk',
                          ),
                          TextTopics(
                              key: work,
                              topic: '<work>',
                              subTopic1: 'Projetos',
                              subTopic2: 'Flutter e Angular'),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    ]);
  }
}
