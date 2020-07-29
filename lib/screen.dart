import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Safe Women')),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: RawMaterialButton(
              elevation: 5.0,
              enableFeedback: true,
              splashColor: Colors.red,
              padding: EdgeInsets.all(30.0),
              shape: CircleBorder(),
              child: Icon(
                Icons.ring_volume,
                size: 60.0,
              ),
              onPressed: (){},
              onLongPress: (){},
            ),
          ),
          Align(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton.extended(
          onPressed: () {},
          tooltip: 'Add Contact',
          label: Text('Add'),
          icon: Icon(Icons.contacts),
        ),
      ),
    );
  }
}
