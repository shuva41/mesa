import 'package:flutter/material.dart';

Widget CardStructure(String Header, String Price, String ImageUrl) {
  return Card(
    borderOnForeground: true,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(10),
      height: 160,
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$Header',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 100,
            width: 150,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Image.asset('images/AL1.png'),
            ),
          ),
          Text(
            'Header 2',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
        ],
      ),
    ),
  );
}

//Card1 Widget

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CardStructure('Header1', 'Rs. 220', 'images/AL1.png'),
      ),
    );
  }
}
