import 'package:examples/example0/custom_shapes.dart';
import 'package:flutter/material.dart';

class Example0 extends StatefulWidget {
  const Example0({Key? key}) : super(key: key);

  @override
  _Example0State createState() => _Example0State();
}

class _Example0State extends State<Example0> {
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
