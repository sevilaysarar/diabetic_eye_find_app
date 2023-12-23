import 'package:flutter/material.dart';

class MyReportPage extends StatefulWidget {
  const MyReportPage({super.key});

  @override
  State<MyReportPage> createState() => _MyReportPageState();
}

class _MyReportPageState extends State<MyReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Report')),
      body: Text('My Report'),
    );
  }
}
