import 'package:flutter/material.dart';
import 'package:practice_3/widgets/futureBuilder.dart';
import 'models/catData.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(AnimalsListScreen());
}

class AnimalsListScreen extends StatefulWidget {
  @override
  _AnimalListScreenState createState() => _AnimalListScreenState();
}

Future<List<CatData>> fetchCats(http.Client client) async {
  final response = await client.get('https://api.thecatapi.com/v1/breeds/');
  return compute(parseCat, response.body);
}

List<CatData> parseCat(responseBody) {
  final parsed = jsonDecode(responseBody) as List;
  return parsed.map<CatData>((json) => CatData.fromJson(json)).toList();
}

class _AnimalListScreenState extends State<AnimalsListScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilderClass());
  }
}
