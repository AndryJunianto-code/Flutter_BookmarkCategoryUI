import 'package:bookmark_category_ui/constants/colors.dart';
import 'package:bookmark_category_ui/data/label_data.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class LabelSection extends StatelessWidget {
  String categoryName;
  Function callback;
  int selected_label;
  LabelSection(this.categoryName,this.selected_label,this.callback,);

  @override
  Widget build(BuildContext context) {
    final selectedCategory =
        data.keys.where((c) => c == categoryName).toList()[0].toString();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Labels',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.grey[800]),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            child: Row(
              children: [
                Expanded(
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_,i){
                          if (i == 0) {
                            return Container(
                              padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 7),
                              decoration: BoxDecoration(
                                border: Border.all(color: kMainPurple),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Icon(Icons.add,color: kMainPurple,),
                            );
                          }
                          return GestureDetector(
                            onTap: () => callback(i),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 14),
                              decoration: BoxDecoration(
                                color: selected_label == i ? kMainPurple : kMainPurple.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Text(data[selectedCategory]![i],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          );
                        },
                        separatorBuilder: (context,i) {return const SizedBox(width: 10,);},
                        itemCount: data[selectedCategory]!.length))
              ],
            ),
          )
        ],
      ),
    );
  }
}
