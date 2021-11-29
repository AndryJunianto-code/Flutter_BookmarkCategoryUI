import 'package:bookmark_category_ui/constants/colors.dart';
import 'package:bookmark_category_ui/screens/home/main_hero.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGray,
      body: Column(children: [
        MainHero()
      ],),
    );
  }
}
