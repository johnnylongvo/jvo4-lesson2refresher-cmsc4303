import 'package:flutter/material.dart';
import 'package:lesson2refresher/viewscreen/counter_screen.dart';

//WEDNESDAY JUNE 8 2022 CLASS TIME

//model view controller MVC

//model: pure data or object only
//independent of any platform use, displayed on console screen
//Student Class (Name & GPA), student class can be used in any model

//view: user's view (creating a button or dropdwon)

//controller: any interaction with user (pressing button)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyHomePage.routeName,
      // routes: {
      //   MyHomePage.routeName: (context) {
      //     return const MyHomePage(title: 'Counter Demo');
      //   },
      routes: {
        MyHomePage.routeName: (context) =>
            const MyHomePage(title: 'Counter Demo')
      },
    );
  }
}
