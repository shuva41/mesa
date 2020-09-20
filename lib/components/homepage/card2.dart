import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          child: Container(
            height: 450,
            width: 270,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 250,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Image.asset('images/Brave1.png'),
                      ),
                    ),
                    Text(
                      'Brave',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Rs. 250',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Rs. 300',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Save Rs. 30',
                      style: TextStyle(
                        color: Colors.teal[200],
                        fontSize: 20,
                      ),
                    ),
                    FlatButton(
                      onPressed: null,
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 10,
                  child: Stack(
                    children: [
                      Image.asset('images/Polygon 1.jpg'),
                      Positioned(
                        left: 20,
                        top: 2,
                        child: Text(
                          '10% off',
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
