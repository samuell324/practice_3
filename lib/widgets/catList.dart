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
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: Text(_catList[index].name),
                ),
              ),
              IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text ('ID: ${_catList[index].id}'),
                          Text ('Country code: ${_catList[index].countryCodes}'),
                          Text ('Temperament: ${_catList[index].temperament}'),
                          Text ('Origin: ${_catList[index].origin}')
                        ],
                      )
                    ),
                    Expanded(
                      child: Card(
                        child: Text(_catList[index].description),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
