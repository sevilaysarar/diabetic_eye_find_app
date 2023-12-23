import 'package:flutter/material.dart';

class AboutTheAppPage extends StatefulWidget {
  const AboutTheAppPage({super.key});

  @override
  State<AboutTheAppPage> createState() => _AboutTheAppPageState();
}

class _AboutTheAppPageState extends State<AboutTheAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About The App')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'About The App',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Our application is very helpful in diagnosing \n diabetes in the healthcare sector.',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Developer Information',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Sevilay ÖZBEK'),
          SizedBox(
            height: 5,
          ),
          Text('sevilaysarar@gmail.com'),
          SizedBox(
            height: 45,
          ),
          Image.asset(
            'images/icon.png',
            width: 100,
          )
        ]),
      ),
    );
  }
}
