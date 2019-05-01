import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './pages/home.dart';
import './pages/hello.dart';
import './scoped/mainScoped.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainScoped>(
      model: MainScoped(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
          accentColor: Colors.white,
          buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.accent,
            buttonColor: Colors.deepOrange,
          ),
        ),
        routes: {
          '/': (context) => Home(),
          '/helloPage': (context) => Hello(),
        },
      ),
    );
  }
}
