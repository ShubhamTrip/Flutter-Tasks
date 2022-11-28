import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/data_model.dart';
class DataRepo{
  static const url ='https://fakestoreapi.com/products';
  Future<List<ProductModel>?> getProductData() async{
    var client =http.Client();

    var uri=Uri.parse(url);
    var response = await client.get(uri);

    if(response.statusCode==200){
      var json = response.body;
      return productModelFromJson(json);
    }
  }
  // CardData parsedJson(final response){
  //   final jsonDecoded = json.decode(response);
  //
  //   final jsonInfo = jsonDecoded["main"];
  //
  //   return CardData.fromJson(jsonInfo);
  // }
}

