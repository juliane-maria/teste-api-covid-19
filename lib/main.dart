import 'package:flutter/material.dart';
import 'package:teste_covid_api/presenter/pages/home_page/home_page.dart';

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
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 251, 251, 252),
        secondaryHeaderColor: Color.fromRGBO(11, 107, 185, 1),
      ),
      home: const HomePage(),
    );
  }
}
