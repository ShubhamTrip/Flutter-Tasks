import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class ListCard extends StatelessWidget {
  String product;
  DateTime date;
  String desciption;
  ListCard({required this.product, required this.date, required this.desciption});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.blueGrey[200],
        elevation: 5,
        child: SizedBox(
          width: double.infinity,
          height: 100,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.all(10),
                child: Text(
                  product,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      desciption,
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      DateFormat.yMMMd().format(date),
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}