import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'catList.dart';
import 'package:practice_3/models/catData.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';

Future<List<CatData>> fetchCats(http.Client client) async {
  final response = await client.get('https://api.thecatapi.com/v1/breeds/');
  return compute(parseCat, response.body);
}

List<CatData> parseCat(responseBody) {
  final parsed = jsonDecode(responseBody) as List;
  return parsed.map<CatData>((json) => CatData.fromJson(json)).toList();
}

class FutureBuilderClass extends StatefulWidget {
  @override
  _FutureBuilderState createState() => _FutureBuilderState();
}

class _FutureBuilderState extends State<FutureBuilderClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice 3'),
        ),
        body: FutureBuilder<List<CatData>>(
            future: fetchCats(http.Client()),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? CatList(
                      catList: snapshot.data,
                    )
                  : Center(child: CircularProgressIndicator());
            }));
  }
}
