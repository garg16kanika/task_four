import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_four_new/data.dart';

class CategoryListItem extends StatefulWidget {
  const CategoryListItem({super.key});

  @override
  State<CategoryListItem> createState() => _CategoryListItemState();
}

class _CategoryListItemState extends State<CategoryListItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: ((context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.4,
            margin: const EdgeInsets.fromLTRB(0, 10, 10, 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orangeAccent),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoriesList[index]['Name'],
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  categoriesList[index]['desc'],
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
