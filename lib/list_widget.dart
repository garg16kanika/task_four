import 'package:flutter/material.dart';
import 'package:task_four_new/category_list_item.dart';
import './data.dart';

class ListWidget extends StatefulWidget {
  ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orangeAccent),
                padding: const EdgeInsets.all(7),
                child: Center(
                  child: Text(
                    categories[index]['categoryItem'],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
          ),
        ),
        const CategoryListItem(),
      ],
    );
  }
}
