import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class ListCard extends StatelessWidget {
  String title;
  DateTime date;
  String desciption;
  String imgsource;
  ListCard({required this.title, required this.date, required this.desciption,required this.imgsource});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.indigo[900],
        elevation: 5,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white70),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      DateFormat.yMMMd().format(date),
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.white38),
                    ),
                  ),
                ],),

                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(imgsource,height: 100,width: 100,fit: BoxFit.fill)
                    ),
                    Container(
                      padding:EdgeInsets.fromLTRB(20, 10,0,0) ,
                      width: 250,
                      child: Text(
                        "${desciption}...",
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white54),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}