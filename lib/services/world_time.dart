import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart'; // number formatting package

class WorldTime {
  String location; // location time for UI
  String time = ""; // the time in that location
  String flag; // url to asset flag icon
  String url; // location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // make the request
      var response = await http
          .get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map timedata = jsonDecode(response.body);

      // get properties from json
      String datetime = timedata['datetime'];
      String offset = timedata['utc_offset'].substring(1, 3);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set the time property
      time = DateFormat.jm().format(now); // formatting
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}
