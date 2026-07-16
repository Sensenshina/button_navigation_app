import 'package:flutter/material.dart';

class OutlinedPages extends StatelessWidget {
  const OutlinedPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outlined Button Page'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is the page opend by OutlinedButton!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.orange,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
              child: const Text('Go Back',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}