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
        body: Column(children: [Text(quoteText), Text(Author)]),
      ),
    );
  }
}
