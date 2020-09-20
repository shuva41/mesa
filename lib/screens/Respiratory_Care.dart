import 'package:flutter/material.dart';
import 'package:mesa/components/BottomNavBar.dart';
import 'package:mesa/components/TopAppBar.dart';
import 'package:mesa/components/categories/subsubCatChild.dart';

class RespiratoryCarePage extends StatefulWidget {
  @override
  _RespiratoryCarePageState createState() => _RespiratoryCarePageState();
}

class _RespiratoryCarePageState extends State<RespiratoryCarePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: TopAppBar(
            pageTitle: Text(
              'Respiratory Care',
              style: TextStyle(
                color: Color(0xff49E9E9),
              ),
            ),
            actionButtons: [
              IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Color(0xff49E9E9),
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Color(0xff49E9E9),
                  ),
                  onPressed: null),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              susubCatChild(
                subsubImgPath: 'images/oxygen_canister.jpg',
                subsubCatTitle: 'Oxygen Canister',
                onTap: null,
              ),
              susubCatChild(
                subsubImgPath: 'images/N95.jpg',
                subsubCatTitle: 'Face Masks',
                onTap: null,
              ),
              susubCatChild(
                subsubImgPath: 'images/nebulizer.jpg',
                subsubCatTitle: 'Nebulizer',
                onTap: null,
              ),
              susubCatChild(
                subsubImgPath: 'images/stem_vaporiser.jpg',
                subsubCatTitle: 'Steam Vaporizer',
                onTap: null,
              ),
            ],
          )),
    );
  }
}
