import 'package:flutter/material.dart';

class ElevatedPages extends StatelessWidget {
  const ElevatedPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button Page'),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is the page opend by ElevatedButton!',
              style: TextStyle( fontSize: 22 ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go Back',
                style: TextStyle(color: Colors.brown),
              ),
            )
          ],
        ),
      ),
    );
  }
}