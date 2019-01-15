import 'package:flutter/material.dart';
import 'package:mvvm_template/Views/Pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff070707),
          primaryColorLight: Color(0xff0a0a0a),
          primaryColorDark: Color(0xff000000),
        ),
        home: MainPage());
  }
}
