import 'package:bookmark_category_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryHero extends StatelessWidget {
  String categoryName;
  CategoryHero(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 190,
      padding: const EdgeInsets.only(top: 35, left: 25, right: 25, bottom: 10),
      decoration: BoxDecoration(
          color: kMainPurple,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 28,
                  )),
              Text(
                categoryName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3),
              ),
              Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
                size: 32,
              )
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          Container(
            width: double.maxFinite,
            height: 47,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  size: 30,
                  color: Colors.grey[100],
                ),
                Text(
                  'What bookmark are you searching for?',
                  style: TextStyle(color: Colors.grey[100], fontSize: 15),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
