import 'package:flutter/material.dart';
import '../../Components/grid_card.dart';
import '../../Models/data_model.dart';

class GridPage extends StatelessWidget {
  List<CardData> listData;

  GridPage({required this.listData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View"),toolbarHeight: 50, backgroundColor: Colors.indigo),
      body: GridView.builder(
          itemCount: listData.length,
          itemBuilder: (ctx,index){
            return GridCard(product: listData[index].title, date: DateTime.now(), desciption: listData[index].description,imgsource: listData[index].leadingImage,);
          },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),),
    );
  }
}
