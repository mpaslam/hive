import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _myBox = Hive.box('mybox');

//writedata

  void writedata() {
    _myBox.put(2, 'Guest');
    _myBox.put(1, 'test');
    print(_myBox.get(2));
  }

//readData

  void readdata() {
    print(_myBox.get(1));
  }

//deleteData

  void deleteData() {
    _myBox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writedata,
              child: Text('write'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: readdata,
              child: Text('Read'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: deleteData,
              child: Text('Delete'),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
