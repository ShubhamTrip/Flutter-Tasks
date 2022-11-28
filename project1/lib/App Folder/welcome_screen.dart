import 'package:flutter/material.dart';
import 'package:project1/App%20Folder/data_repo.dart';
import 'package:project1/App%20Folder/grid_view/grid_view.dart';
import 'package:project1/App%20Folder/list_view/list_view.dart';
import 'package:project1/Models/data_model.dart';

class Welcome_Screen extends StatefulWidget {

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  final List<CardData> data_list = [CardData(title: "Title 1", description: "This is the description 1", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 2", description: "This is the description 2", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 3", description: "This is the description 3", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 4", description: "This is the description 4", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 5", description: "This is the description 5", leadingImage: "assets/imgleading.png", date: DateTime.now()),
    CardData(title: "Title 6", description: "This is the description 6", leadingImage: "assets/imgleading.png", date: DateTime.now())];
  List<ProductModel>? model;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   provideData();
  }

  provideData() async{
    model = await DataRepo().getProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width:200,height: 40,child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>ListPage(listData: model)));
          },child: const Text("List View"),)),
          const SizedBox(height: 20,),
          SizedBox(width:200,height:40,child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GridPage(listData: model,)));
          }, child: const Text("Grid View")))
        ],
      ),
    );
  }
}
