import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercicio 2'),
        ),
        body: const ResponsiveBoxes(),
      ),
    );
  }
}

class ResponsiveBoxes extends StatelessWidget {
  const ResponsiveBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 400) {
          return Center(
            child: Container(
              width: 180,
              height: 180,
              color: Colors.blue,
            ),
          );
        } else if (constraints.maxWidth <= 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 180,
                height: 180,
                color: Colors.blue,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                width: 180,
                height: 180,
                color: Colors.green,
                margin: const EdgeInsets.all(10),
              ),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.blue,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.green,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.red,
                margin: const EdgeInsets.all(10),
              ),
            ],
          );
        }
      },
    );
  }
}
