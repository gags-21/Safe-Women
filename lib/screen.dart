import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    Location().getCurrentLocation();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Safe Women')),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ///Main Button
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
              onPressed: () {
                Location().getCurrentLocation();
              },
              onLongPress: () {},
            ),
          ),

          ///Contacts Preview
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 30),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: Colors.white.withAlpha(50),
                    splashColor: Colors.red.withAlpha(150),
                    onPressed: () {},
                    child: Text('A'),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: Colors.white.withAlpha(50),
                    splashColor: Colors.orange.withAlpha(150),
                    onPressed: () {},
                    child: Text('B'),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: Colors.white.withAlpha(50),
                    splashColor: Colors.green.withAlpha(150),
                    onPressed: () {},
                    child: Text('C'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(10.0),
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
