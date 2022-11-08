import 'dart:convert';

//import 'package:app/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String quote = "";
  String author = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              //title: Text(title),
              ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "-$quote",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "-$author",
                      style: TextStyle(fontSize: 10),
                    )),
              ),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    //title = "apple";
                  });
                  var url = Uri.parse(
                      'https://goquotes-api.herokuapp.com/api/v1/random?count=1');
                  var response = await http.get(url);
                  print('Response status: ${response.statusCode}');
                  print('Response body: ${response.body}');
                  var data = jsonDecode(response.body);
                  quote = (data["quotes"][0]["text"]);
                  author = (data["quotes"][0]["author"]);

                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) =>
                  //         Secondscreen(quoteText: quote, Author: author)));
                },
                child: Text('get quote'),
              ),
            ],
          )),
    );
  }
}
