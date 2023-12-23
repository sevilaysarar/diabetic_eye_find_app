import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Card(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image.asset('images/home_diabetic_eye.jpg')),
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(
                            'Welcome',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                              textAlign: TextAlign.center,
                              'Welcome back to the program that diagnoses diabetes based on the first and only eye image.')
                        ],
                      ),
                    )
                  ],
                ),
              )),
            ),
          ),
        ));
  }
}
