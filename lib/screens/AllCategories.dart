import 'package:flutter/material.dart';
import 'package:mesa/components/BottomNavBar.dart';
import 'package:mesa/components/TopAppBar.dart';
import 'package:mesa/components/categories/CategoryExpand.dart';
import 'package:mesa/components/categories/subCatChild.dart';

class AllCategoriesPage extends StatefulWidget {
  @override
  _AllCategoriesPageState createState() => _AllCategoriesPageState();
}

class _AllCategoriesPageState extends State<AllCategoriesPage> {
  String r_name = '/';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar(
          pageTitle: Text(
            'All Categories',
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
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              CategoryExpand(
                children: [
                  Wrap(
                    spacing: 26,
                    runSpacing: 20,
                    children: [
                      subCatChild(
                        TXT1: 'Respiratory Care',
                        SubCatImgPath: 'images/respiratory_care.jpg',
                        onSubCatTap: (ctx, route) {
                          setState(() {
                            r_name = route;
                            Navigator.pushNamed(ctx, r_name);
                          });
                        },
                      ),
                      subCatChild(
                        TXT1: 'Pain Management',
                        SubCatImgPath: 'images/Pain_Management.jpg',
                        onSubCatTap: null,
                      ),
                      subCatChild(
                        TXT1: 'Support Aid',
                        SubCatImgPath: 'images/Support_Aids.jpg',
                        onSubCatTap: null,
                      ),
                      subCatChild(
                        TXT1: 'Mobility Aid',
                        SubCatImgPath: 'images/wheel_chair.jpg',
                        onSubCatTap: null,
                      ),
                      subCatChild(
                        TXT1: 'Gel Based Support',
                        SubCatImgPath: 'images/gel_based_support.jpg',
                        onSubCatTap: null,
                      ),
                      subCatChild(
                        TXT1: 'General Supplies',
                        SubCatImgPath: 'images/General_Supplies.jpg',
                        onSubCatTap: null,
                      ),
                    ],
                  ),
                ],
                catTitle: 'Home HealthCare',
                catImgPath: 'images/HomeHealth.png',
              ),
              CategoryExpand(
                children: [],
                catTitle: 'Child Care',
                catImgPath: 'images/mother_child.png',
              ),
              CategoryExpand(
                children: [],
                catTitle: 'Diabetis Care',
                catImgPath: 'images/Diabetis.png',
              ),
              CategoryExpand(
                children: [],
                catTitle: 'Dental Care',
                catImgPath: 'images/dental_care.jpg',
              ),
              CategoryExpand(
                children: [],
                catTitle: 'Old Age Care',
                catImgPath: 'images/Old_age.png',
              ),
              CategoryExpand(
                children: [],
                catTitle: 'Men\'s HealthCare',
                catImgPath: 'images/men_health.jpg',
              ),
              CategoryExpand(
                children: [],
                catTitle: 'Women\'s HealthCare',
                catImgPath: 'images/women_health.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
