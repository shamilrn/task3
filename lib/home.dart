import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Task 3'),
        centerTitle: true,
      ),
      body: Center(
        child: ShowName(
          firstName: 'John',
          secondName: 'Doe',
          prefix: 'Mr. ',
          suffix: ' Jr.',
        ),
      ),
    );
  }
}

class ShowName extends StatelessWidget {
  final String firstName;
  final String secondName;
  final String prefix;
  final String suffix;

  const ShowName({
    required this.firstName,
    required this.secondName,
    this.prefix = '',
    this.suffix = '',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$prefix$firstName $secondName$suffix',
      style: TextStyle(fontSize: 25,
      fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    );
  }
}