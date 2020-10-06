import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'catData.dart';

void main() {
  runApp(MainPage());
}

Future<List<CatData>> fetchCats(http.Client client) async {
  final response = await client.get('https://api.thecatapi.com/v1/breeds/');
  return compute(parseCat, response.body);
}

List<CatData> parseCat(responseBody) {
  final parsed = jsonDecode(responseBody) as Map<String, dynamic>;
  return parsed[''].map<CatData>((json) => CatData.fromJson(json)).toList();
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practice 3'),
        ),
      ),
    );
  }
}
