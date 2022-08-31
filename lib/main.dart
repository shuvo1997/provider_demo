import 'package:flutter/material.dart';
import 'package:provider_demo/screens/home.dart';
import 'package:provider_demo/screens/list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/list': (context) => const MyListPage(),
      },
    );
  }
}
