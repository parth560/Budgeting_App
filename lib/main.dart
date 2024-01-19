import 'package:flutter/material.dart';
import './spending_event_form.dart';
import 'spending_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // instead of the generated sample widget, we'll use our own custom widget
      // as the default widget we'll show on opening the app
      home: const SpendingPage(),
    );
  }
}
