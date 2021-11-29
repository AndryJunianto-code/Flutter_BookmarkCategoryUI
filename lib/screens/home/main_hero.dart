import 'package:bookmark_category_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class MainHero extends StatelessWidget {
  const MainHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
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
              Icon(
                Icons.bubble_chart,
                color: Colors.white,
                size: 45,
              ),
              Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
                size: 32,
              )
            ],
          ),
          const SizedBox(height: 3,),
          Row(children: [
            Text('Hi Andry',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 27),)
          ],),
          const SizedBox(height: 3,),
          Row(children: [
            Text('Welcome Back', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27,letterSpacing: 1.4),),
            const SizedBox(width: 10,),
            Text('👋',style: TextStyle(fontSize: 30),)
          ],),
          const SizedBox(height: 14,),
          Container(
            width: double.maxFinite,
            height: 47,
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                Icon(Icons.search_outlined,size: 30,color: Colors.grey[100],),
                Text('What category are you searching for?',style: TextStyle(color: Colors.grey[100],fontSize: 15),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
