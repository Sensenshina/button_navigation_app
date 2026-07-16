import 'package:flutter/material.dart';

class TextPages extends StatelessWidget {
  const TextPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Button Page'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is the page opend by TextButton!',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              onPressed: () {Navigator.pop(context);},
              child: const Text('Go Back'),
            )
          ],
        ),
      ),
    );
  }
}