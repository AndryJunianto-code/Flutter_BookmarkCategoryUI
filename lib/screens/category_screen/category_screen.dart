import 'package:bookmark_category_ui/constants/colors.dart';
import 'package:bookmark_category_ui/screens/category_screen/category_hero.dart';
import 'package:bookmark_category_ui/screens/category_screen/label_section.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  String categoryName;
  CategoryScreen(this.categoryName);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int selected_label = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGray,
      body: Column(
        children: [
          CategoryHero(widget.categoryName),
          const SizedBox(height: 20,),
          LabelSection(widget.categoryName,selected_label,(int index){
            setState(() {
              selected_label = index;
            });
          })
        ],
      ),
    );
  }
}
