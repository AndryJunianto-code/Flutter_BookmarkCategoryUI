import 'package:bookmark_category_ui/constants/colors.dart';
import 'package:bookmark_category_ui/models/category.dart';
import 'package:bookmark_category_ui/screens/category_screen/category_screen.dart';
import 'package:bookmark_category_ui/screens/home/category_title.dart';
import 'package:bookmark_category_ui/screens/home/main_hero.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<Category> categories = [
    Category("New ideas", Icons.lightbulb_outline,
        Color.fromARGB(255, 255, 243, 198), Colors.yellow[800]!),
    Category("Music", Icons.music_note_outlined,
        Color.fromARGB(255, 215, 239, 255), Color.fromARGB(255, 62, 160, 247)),
    Category("Programming", Icons.monitor_outlined,
        Color.fromARGB(255, 224, 215, 255), Color.fromARGB(255, 139, 111, 242)),
    Category("Cooking", Icons.monitor_outlined,
        Color.fromARGB(255, 251, 225, 251), Color.fromARGB(255, 241, 97, 199)),
    Category("Travelling", Icons.monitor_outlined,
        Color.fromARGB(255, 184, 238, 220), Color.fromARGB(255, 70, 172, 138)),
    Category("Job", Icons.monitor_outlined, Color.fromARGB(255, 255, 223, 205),
        Color.fromARGB(255, 254, 146, 122)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGray,
      body: Column(
        children: [
          MainHero(),
          const SizedBox(
            height: 20,
          ),
          CategoryTitle(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemCount: categories.length.toDouble() ~/ 2,
                itemBuilder: (_, i) {
                  int a = 2 * i;
                  int b = 2 * i + 1;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen(categories[a].title)));
                        },
                        child: IndividualCategory(categories: categories, a: a)),
                       GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen(categories[b].title)));
                        },
                        child: IndividualCategory(categories: categories, a: b)),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IndividualCategory extends StatelessWidget {
  const IndividualCategory({
    Key? key,
    required this.categories,
    required this.a,
  }) : super(key: key);

  final List<Category> categories;
  final int a;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
      margin: const EdgeInsets.only(bottom: 17),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: categories[a].bgColor,
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              categories[a].logo,
              size: 42,
              color: categories[a].fontColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            categories[a].title,
            style: TextStyle(
                color: categories[a].fontColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: 1.2),
          )
        ],
      ),
    );
  }
}
