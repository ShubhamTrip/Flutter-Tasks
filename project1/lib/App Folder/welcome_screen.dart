import 'package:flutter/material.dart';
import 'package:project1/App%20Folder/grid_view/grid_view.dart';
import 'package:project1/App%20Folder/list_view/list_view.dart';
import 'package:project1/Models/data_model.dart';

class Welcome_Screen extends StatelessWidget {

  final List<CardData> data_list = [CardData(title: "Title 1", description: "This is the description 1", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 2", description: "This is the description 2", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 3", description: "This is the description 3", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 4", description: "This is the description 4", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 5", description: "This is the description 5", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 6", description: "This is the description 6", leadingImage: "assets/imgleading.png", date: DateTime.now())];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width:200,height: 40,child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ListPage(listData: data_list,)));
          },child: const Text("List View"),)),
          const SizedBox(height: 20,),
          SizedBox(width:200,height:40,child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GridPage(listData: data_list,)));
          }, child: const Text("Grid View")))
        ],
      ),
    );
  }
}
