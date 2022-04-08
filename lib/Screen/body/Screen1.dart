import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: cardItem(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: 'Coruse',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Qustion Papers',
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget cardItem(int i) {
    if (i == 0) {
      return GridView.count(
        crossAxisCount: 2,
        children: List<Widget>.generate(6, (int index) {
          return GridTile(
            child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 4.0,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: Image.asset('assets/images/course-icon-3.jpg')),
                    Text(' SEMISTER - $index'),
                  ],
                )),
          );
        }),
      );
    } else {
      return GridView.count(
        crossAxisCount: 2,
        children: List<Widget>.generate(10, (int index) {
          return GridTile(
            child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: Image.asset('assets/images/question.png')),
                      Text('Question Paper - 200$index'),
                    ],
                  ),
                )),
          );
        }),
      );
    }
  }
}
