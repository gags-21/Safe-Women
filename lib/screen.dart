import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location.dart';
import 'contact.dart';
import 'call_sms.dart';
import 'permissions.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String contact1 = '', contact2 = '', contact3 = '';

  @override
  void initState() {
    Per().getAllPer(context);
    //   Location().getCurrentLocation();
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
                //SmsIt().smsNow();
                Location().getCurrentLocation();

              },
              onLongPress: () {
                CallIt().callNow('123456789');
              },
            ),
          ),

          Column(
            children: <Widget>[
              Text(contact1 == '' ? 'Select Contact yaaar' : contact1),
              Text(contact2 == '' ? 'Select Contact yaaar' : contact2),
              Text(contact2 == '' ? 'Select Contact yaaar' : contact3),
            ],
          ),

          ///Contacts Preview
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 25),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: contact1 == ''
                        ? Colors.white.withAlpha(50)
                        : Colors.red.withAlpha(150),
                    splashColor: Colors.red.withAlpha(150),
                    onPressed: () {
                      setState(() {
                        Contacts()
                            .getContactName()
                            .then((value) => contact1 = value);
                      });
                    },
                    child: contact1 == ''
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : Text(contact1.substring(0, 1).toUpperCase()),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: contact2 == ''
                        ? Colors.white.withAlpha(50)
                        : Colors.orange.withAlpha(150),
                    splashColor: Colors.orange.withAlpha(150),
                    onPressed: () {
                      setState(() {
                        Contacts()
                            .getContactName()
                            .then((value) => contact2 = value);
                      });
                    },
                    child: contact2 == ''
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : Text(contact2.substring(0, 1).toUpperCase()),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: contact3 == ''
                        ? Colors.white.withAlpha(50)
                        : Colors.green.withAlpha(150),
                    splashColor: Colors.green.withAlpha(150),
                    onPressed: () {
                      setState(() {
                        Contacts()
                            .getContactName()
                            .then((value) => contact3 = value);
                      });
                    },
                    child: contact3 == ''
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : Text(contact3.substring(0, 1).toUpperCase()),
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
