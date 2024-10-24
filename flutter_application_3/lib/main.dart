import 'package:flutter/material.dart';

void main() => runApp(const
ElevatedbuttonExampleApp());

class ElevatedbuttonExampleApp extends
StatelessWidget {
  const ElevatedbuttonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const
        Text('ElevatedButton Sample')),
        body: const ElevatedbuttonExampleApp(),
      ),
    );
  }
}

