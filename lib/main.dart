import 'package:flutter/material.dart';
import 'package:practice_3/widgets/futureBuilder.dart';

void main() {
  runApp(AnimalsListScreen());
}

class AnimalsListScreen extends StatefulWidget {
  @override
  _AnimalListScreenState createState() => _AnimalListScreenState();
}

class _AnimalListScreenState extends State<AnimalsListScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilderClass());
  }
}
