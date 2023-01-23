import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // const({super.key});

  @override
  State<Home> createState() => HhomeState();
}

class HhomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context,
                  '/location'); // here how pressed and push to location page and if we want to go back to home its gonna pop like stack
            },
            icon: Icon(Icons.edit_location),
            label: Text('Edit Location'),
          )
        ]),
      ),
    );
  }
}
