import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:resume_flutter/pages/home.dart';

void main() {
  runApp(App());
}

// ignore: use_key_in_widget_constructors
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 1920,
          minWidth: 500,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.resize(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1920, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFF0F0F0F))),
      initialRoute: "/",
    );
  }
}
