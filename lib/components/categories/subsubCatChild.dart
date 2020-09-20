import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class susubCatChild extends StatelessWidget {
  final String subsubImgPath;
  final String subsubCatTitle;
  final Function onTap;

  susubCatChild({
    @required this.subsubImgPath,
    @required this.subsubCatTitle,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff989DA3),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 85,
              width: 100,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(subsubImgPath),
              ),
            ),
            Text(
              subsubCatTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
