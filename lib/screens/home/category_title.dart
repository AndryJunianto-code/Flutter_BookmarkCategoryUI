import 'package:bookmark_category_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.grey[800]),),
          Row(
            children: [
              Icon(Icons.delete_outline,size: 27,color: kMainPurple.withOpacity(0.5),),
              const SizedBox(width: 7,),
              Icon(Icons.note_add_outlined,color: kMainPurple.withOpacity(0.5)),
              const SizedBox(width: 7,),
              Icon(Icons.shuffle,size: 25,color: kMainPurple,)
            ],
          )
        ],
      ),
    );
  }
}