import 'package:flutter/material.dart';
import 'package:flutter_thirteen_homework/PageOne.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageOne()
    );
  }
}
