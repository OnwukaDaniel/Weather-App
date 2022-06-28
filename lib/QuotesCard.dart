import 'package:flutter/material.dart';
import 'package:learnx/Quotes.dart';

class QuotesCard extends StatelessWidget {
  Color? backgroundx = Colors.blue;
  Color? background1 = Colors.green;
  Color? black = Colors.black;
  Color? white = Colors.white;

  final Quote? quote;
  final Function()? delete;

  QuotesCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent,
      elevation: 5,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('${quote!.quote!}',
                style: TextStyle(color: white, fontSize: 17)),
            SizedBox(height: 10),
            Text('Author: ${quote!.author!}',
                style: TextStyle(color: white, fontSize: 13)),
            SizedBox(height: 5),
            Text('Date: ${quote!.date!}',
                style: TextStyle(color: white, fontSize: 13)),
            SizedBox(height: 7),
            Center(
              child: ElevatedButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text(
                  "Remove",
                  style: TextStyle(
                      color: black, fontSize: 14, fontFamily: "fonts/Lato"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
