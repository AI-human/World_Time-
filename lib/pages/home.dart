import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // const({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data =
        ModalRoute.of(context)!.settings.arguments as Map; // passing route data
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
              // here how pressed and push to location page and if we want to go back to home its gonna pop like stack
            },
            icon: Icon(Icons.edit_location),
            label: Text('Edit Location'),
          )
        ]),
      ),
    );
  }
}
