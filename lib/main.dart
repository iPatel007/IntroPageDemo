import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'intro_pages/bloc/intro_bloc.dart';
import 'intro_pages/intro_pages.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s Find Partner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: 'Montserrat',
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  title: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            fontFamily: 'Montserrat',
          )))),
      home: ChangeNotifierProvider(
          builder: (_) => IntroBlocProvider(), child: IntroPages()),
    );
  }
}
