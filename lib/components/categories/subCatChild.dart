import 'package:flutter/material.dart';

class subCatChild extends StatelessWidget {
  final String TXT1;
  final String SubCatImgPath;
  final Function onSubCatTap;

  subCatChild({
    @required this.TXT1,
    @required this.SubCatImgPath,
    @required this.onSubCatTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSubCatTap(context, '/respiratorycare'),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff989DA3),
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 75,
        width: 150,
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 50,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(SubCatImgPath),
              ),
            ),
            Expanded(
              child: Text(
                TXT1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
