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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(children: <Widget>[
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
                // here how pressed and push to location page and if we want to go back to home its gonna pop like stack
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location'),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data['location'],
                  style: TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              data['time'],
              style: TextStyle(
                fontSize: 66.0,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
