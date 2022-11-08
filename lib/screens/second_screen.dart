import 'package:app/screens/home_screen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              /*Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Homescreen()));*/
              Navigator.of(context).pop();
            },
            child: Text('go back'),
          ),
        ),
      ),
    );
  }
}
