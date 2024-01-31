import 'package:examples/custom_shapes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.green,
        toolbarHeight: 400,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: Center(
          child: ClipPath(
            clipper: Customshape(),
            child: Container(
              height: 200,
              // width: MediaQuery.of(context).size.width,
              width: 200,
              color: Colors.green,
              child: const Center(
                  child: Text(
                "",
                style: TextStyle(fontSize: 40, color: Colors.white),
              )),
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
