import 'package:examples/example1/example1.dart';
import 'package:examples/example2/example2.dart';
import 'package:examples/example3/example3.dart';
import 'package:examples/example4/example4.dart';
import 'package:examples/example5/example5.dart';
import 'package:examples/example6/example6.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            //  const Example0(),
            // const Example1(),
            // const Example2(),
            // const Example3(),
            // const Example4(),
            // const Example5(),
            const Example6());
  }
}
