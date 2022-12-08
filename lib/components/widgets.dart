import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_flutter/components/colors.dart';

//NavigationBar = Used to navigate between topics in home page.
// ignore: must_be_immutable
class NavBar extends StatelessWidget {
  ScrollController scrollController;
  GlobalKey me, about, work, contact;

  NavBar({
    Key? key,
    required this.scrollController,
    required this.me,
    required this.about,
    required this.work,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => {
                  Scrollable.ensureVisible(me.currentContext as BuildContext)
                },
                child: Text("<lacivita>",
                    style: GoogleFonts.poppins(
                        color: textPrimary,
                        fontSize: 20,
                        letterSpacing: 3,
                        fontWeight: FontWeight.normal)),
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerRight,
                child: Wrap(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                            me.currentContext as BuildContext);
                      },
                      child: Text('<me>',
                          style: GoogleFonts.poppins(
                              color: textSecondary, fontSize: 20)),
                    ),
                    TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                            about.currentContext as BuildContext);
                      },
                      child: Text('<about>',
                          style: GoogleFonts.poppins(
                              color: textSecondary, fontSize: 20)),
                    ),
                    TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                            work.currentContext as BuildContext);
                      },
                      child: Text('<work>',
                          style: GoogleFonts.poppins(
                              color: textSecondary, fontSize: 20)),
                    ),
                    TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                            contact.currentContext as BuildContext);
                      },
                      child: Text('<contact>',
                          style: GoogleFonts.poppins(
                              color: textSecondary, fontSize: 20)),
                    ),
                  ],
                ),
              ),
            ),
          ])),
    ]);
  }
}

//Topic names and subtopics
class TextTopics extends StatelessWidget {
  final String topic;
  final String subTopic1;
  final String subTopic2;

  const TextTopics(
      {Key? key,
      required this.topic,
      required this.subTopic1,
      required this.subTopic2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  width: 150,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      topic,
                      style: GoogleFonts.poppins(
                          color: textPrimary,
                          fontSize: 24,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                        width: 1,
                        height: 200,
                        child: DecoratedBox(
                            decoration: BoxDecoration(color: textPrimary))),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      subTopic1,
                      style: GoogleFonts.poppins(
                          color: textPrimary,
                          fontSize: 22,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      subTopic2,
                      style: GoogleFonts.poppins(
                          color: textSecondary,
                          fontSize: 18,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}

class TextDesc extends StatelessWidget {
  final String subTopic1;
  final String subTopic2;
  final String subTopic3;

  const TextDesc(
      {Key? key,
      required this.subTopic1,
      required this.subTopic2,
      required this.subTopic3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const SizedBox(
                  width: 150,
                ),
              ],
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                        width: 1,
                        height: 200,
                        child: DecoratedBox(
                            decoration: BoxDecoration(color: textPrimary))),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      subTopic1,
                      style: GoogleFonts.poppins(
                          color: textPrimary,
                          fontSize: 22,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      subTopic2,
                      style: GoogleFonts.poppins(
                          color: textTerciary,
                          fontSize: 18,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      subTopic3,
                      style: GoogleFonts.poppins(
                          color: textSecondary,
                          fontSize: 18,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const SizedBox(
                  width: 150,
                ),
              ],
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                        width: 1,
                        height: 100,
                        child: DecoratedBox(
                            decoration: BoxDecoration(color: textPrimary))),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                          color: textPrimary,
                          fontSize: 25,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
