import 'package:flutter/material.dart';
import 'first.dart';
void main() {
  runApp(MaterialApp(
    home: inputPage(),
  )
  );
}

class inputPage extends StatefulWidget {
  const inputPage({Key? key}) : super(key: key);

  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  @override
  Widget build(BuildContext context) {
    return firstInp();
  }
}


