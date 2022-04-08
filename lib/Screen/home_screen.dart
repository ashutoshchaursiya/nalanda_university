import 'package:flutter/material.dart';
import 'package:nalanda_university/Screen/body/Screen1.dart';
import 'package:nalanda_university/appbar/drawer.dart';
// import 'package:nalanda_university/Drawer/drawer.dart';
import 'package:nalanda_university/appbar/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nalanda University"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: const Home1(),
    );
  }
}
