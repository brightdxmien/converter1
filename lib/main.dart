import 'package:firstflutter/currencywidget1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cupertino.dart';

void main() {
  runApp(
    const CupertinoApp(
        home: CupertinoPageScaffold(
            child: Center(
      child: CurrencyCupertino(),
    ))),
  );
}

//Material app
//Types of widgets
//1. stateless widget
//2. Stateful widget
//3. inherited widget

//Design Types
//Material Design
//Cupertino Design

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConvert(),
    );
    /*return const Text(
      "This is my first flutter program",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );*/
  }
}

class MyCupertino extends StatelessWidget {
  const MyCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyCupertino(),
    );
  }
}
