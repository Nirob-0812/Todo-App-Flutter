import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Providers/Counter.dart';
import 'package:to_do_app/Providers/TaskAdd.dart';
import 'package:to_do_app/Screens/FirstPage.dart';
import 'package:to_do_app/Screens/HomePage.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => TaskAdd())
    ],
    child: ToDOApp(),
  ));
}

class ToDOApp extends StatelessWidget {
  const ToDOApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/Second": (context) => FirstPage()
      },
    );
  }
}
