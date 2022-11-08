import 'package:app/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var url = Uri.parse(
                'https://goquotes-api.herokuapp.com/api/v1/random?count=1');
            var response = await http.get(url);
            print('Response status: ${response.statusCode}');
            print('Response body: ${response.body}');

            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Secondscreen()));
          },
          child: Text('go to next screen'),
        ),
      )),
    );
  }
}
