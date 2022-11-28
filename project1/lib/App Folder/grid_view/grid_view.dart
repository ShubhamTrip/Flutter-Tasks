import 'package:flutter/material.dart';
import '../../Components/grid_card.dart';
import '../../Models/data_model.dart';

class GridPage extends StatelessWidget {
  List<ProductModel>? listData;

  GridPage({required this.listData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View"),toolbarHeight: 50, backgroundColor: Colors.indigo),
      body: GridView.builder(
          itemCount: listData?.length,
          itemBuilder: (ctx,index){
            return GridCard(product: listData![index].title.toString().substring(0,10), date: DateTime.now(), desciption: listData![index].description.toString().substring(0,30),imgsource: listData![index].image.toString(),);
          },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),),
    );
  }
}
