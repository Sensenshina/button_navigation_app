import 'package:button_navigation_app/text_page.dart';
import 'package:button_navigation_app/outlined_page.dart';
import 'package:button_navigation_app/elevated_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:  HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //Methods
  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Button Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () { _navigateToPage(context, const TextPages()); },
              child: const Text(
                'Open Text Page',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green),
              ),
            ),
            OutlinedButton(
              onPressed: () { _navigateToPage(context, const OutlinedPages()); },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
              child: const Text(
                'Open Outlined Page',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange),
              ),
            ),
            ElevatedButton(
              onPressed: () { _navigateToPage(context, const ElevatedPages()); },
              child: const Text(
                'Open Elevated Page',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.brown),
              ),
            ),
          ],
        ),
      ),
    );
  }
}