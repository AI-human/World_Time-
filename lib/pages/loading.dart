import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map data = jsonDecode(response.body); // for converting json file into Map
    print(data);
    print(data['title']);
  }

  int cnt = 0;
  @override
  void initState() {
    super.initState();
    print('initState function ran'); // it
    getData();
    print('dosen\'t wait for get data or block this line');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
