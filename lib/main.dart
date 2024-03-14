import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/home.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio_website/screens/projects.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aayan Agarwal',
      debugShowCheckedModeBanner: false,
      // home: Material(child: HomePage()
      routes: {
        '/': (context) => const HomePage(),
        '/projects': (context) => const Projects(),
      },
    );
  }
}
