import 'dart:developer';

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //
    String s = await Future.delayed(Duration(seconds: 5), () {
      // await means gonna sync async function , and we also write async keywords in after function name

      // Async func
      return 'Let\'s roll';
    });
    print('$s');
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
    print('build function ran');
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a Location;'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
          onPressed: () {
            setState(() {
              cnt++;
            });
          },
          child: Text('$cnt'),
        ));
  }
}
