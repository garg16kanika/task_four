import 'package:flutter/material.dart';
import './list_widget.dart';

class PageOther extends StatefulWidget {
  const PageOther({super.key});

  @override
  State<PageOther> createState() => _PageOtherState();
}

class _PageOtherState extends State<PageOther> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find Your',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Consultation',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Categories',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              ListWidget(),
              const Text(
                'Doctors',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              GridTileBar(
                backgroundColor: Colors.orange[100],
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/doctor.png',
                    fit: BoxFit.cover,
                  ),
                ),
                title: const Text(
                  'Dr. Stefeni Albert',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),
                ),
                subtitle: const Text(
                  'Heart Specialist',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Container(
                  padding: const EdgeInsets.all(10),
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(child: Text('Call')),
                ),
              )
            ],
        ),
      ),
          )),
    );
  }
}
