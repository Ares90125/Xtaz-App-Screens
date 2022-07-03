import 'package:flutter/material.dart';
import 'package:photoediting/screens/navigationbar/newnavigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/newnavigationbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewNavigationBaar(),
    );
  }
}
