import 'package:flutter/material.dart';
import '../models/catData.dart';

class CatList extends StatelessWidget {
  CatList({Key key, List<CatData> catList})
      : _catList = catList,
        super(key: key);
  final List<CatData> _catList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _catList.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                title: Text(
                  _catList[index].name,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )),
        );
      },
    );
  }
}
