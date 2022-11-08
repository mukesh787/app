import 'package:app/screens/home_screen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  String quoteText;
  String Author;

  Secondscreen({
    Key? key,
    required this.Author,
    required this.quoteText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "-$quoteText",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "-$Author",
                style: TextStyle(fontSize: 8),
              ))
        ]),
      ),
    );
  }
}
