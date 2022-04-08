import 'package:flutter/material.dart';
import 'package:nalanda_university/Screen/home_screen.dart';
// import 'package:nalanda_university/appbar/drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'NALANDA UNIVERSITY',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Sub Title',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('1'),
        ],
      ),
    );

    final Color color = Theme.of(context).primaryColor;

    final Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    final Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        "Nalanda University (also known as Nalanda International University) is an international and research-intensive class located in the historical city of Rajgir, in Bihar, India. It was established by an Act of Parliament to emulate the famous ancient university of Nalanda, which functioned between the 5th and 13th centuries. The idea to resurrect Nalanda University was endorsed in 2007 at the East Asia Summit, represented mostly by Asian countries including China, Singapore, South Korea, Malaysia and Vietnam, apart from Australia and New Zealand, and as such, the university is seen as one of the flagship projects of the Government of India. It has been designated as an 'International Institution of National Importance' by the Parliament, and began its first academic session on September 1, 2014. Initially set up with temporary facilities in Rajgir, a modern campus spanning over 400 acres is expected to be finished by 2020. This campus, upon completion, will be the largest of its kind in India, and one of the largest in Asia."
        "One of the most prestigious universities all over the world it has marked it's excellence in the field of research setting high records for the students"
        " - It has been awarded with ' Institution of national importance' by the Indian government.",
        softWrap: true,
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()));
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'assets/images/coll.jpg',
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
