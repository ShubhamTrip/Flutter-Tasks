
import 'package:flutter/material.dart';
import 'package:project1/Components/list_card.dart';
import 'package:project1/Models/data_model.dart';

import '../../Components/list_cardTile.dart';

class ListPage extends StatelessWidget {
  List<CardData> listData;

  ListPage({required this.listData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View"),toolbarHeight: 50, backgroundColor: Colors.indigo),
      body: ListView.builder(
           itemCount: listData.length,
          itemBuilder: (ctx,index){
        return ListCard(title: listData[index].title, date: DateTime.now(), desciption: listData[index].description,imgsource: listData[index].leadingImage,);
      }),
    );
  }
}
