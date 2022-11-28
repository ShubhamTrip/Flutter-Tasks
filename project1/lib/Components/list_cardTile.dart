import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class ListTileCard extends StatelessWidget {
  String title;
  DateTime date;
  String desciption;
  String imgsource;
  ListTileCard({required this.title, required this.date, required this.desciption,required this.imgsource});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.indigo[900],
        elevation: 5,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 8,bottom: 8),
            child: ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imgsource,height: 100,width: 100,fit: BoxFit.fill)
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("$title...",style: TextStyle(color: Colors.white70)),
                Text(
                  DateFormat.yMMMd().format(date),
                  style:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.white70),
                )
              ],),
              subtitle: Text("$desciption...",style: TextStyle(color: Colors.white54)),
            ),
          ),
        ),
      ),
    );
  }
}