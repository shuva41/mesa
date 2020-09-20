import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            ),
            padding: EdgeInsets.all(10),
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  width: 140,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('images/GR1.png'),
                    ),
                  ),
                ),
                Text('Grenade'),
                Text(
                  'Rs 233/-',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
