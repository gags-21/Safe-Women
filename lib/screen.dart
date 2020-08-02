import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location.dart';
import 'contact.dart';
import 'call_sms.dart';
import 'alert_box.dart';
import 'permissions.dart';
import 'package:contact_picker/contact_picker.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Contact contact1, contact2, contact3;

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
              autofocus: true,
              elevation: 5.0,
              enableFeedback: true,
              highlightColor: Colors.transparent,
              splashColor: Colors.red,
              animationDuration: Duration(seconds: 2),
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
              Text(contact1 == null
                  ? 'Select Contact yaaar'
                  : contact1.fullName.toString()),
              Text(contact2 == null
                  ? 'Select Contact yaaar'
                  : contact2.fullName.toString()),
              Text(contact3 == null
                  ? 'Select Contact yaaar'
                  : contact3.fullName.toString()),
            ],
          ),

          ///Contacts Preview
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 25),
              child: Row(
                children: <Widget>[
                  ///contact 1
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: contact1 == null
                        ? Colors.white.withAlpha(50)
                        : Colors.red.withAlpha(150),
                    splashColor: Colors.red.withAlpha(150),
                    onPressed: () {
                      CallIt().callNow(contact1.phoneNumber.number.toString());
                    },
                    onLongPress: () {
                      setState(() {
                        contact1 = null;
                        delNom(1);
                      });
                    },
                    child: contact1 == null
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : Text(contact1.fullName
                            .toString()
                            .substring(0, 1)
                            .toUpperCase()),
                  ),
                  ///contact 2
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: contact2 == null
                        ? Colors.white.withAlpha(50)
                        : Colors.orange.withAlpha(150),
                    splashColor: Colors.orange.withAlpha(150),
                    onPressed: () {
                      CallIt().callNow(contact2.phoneNumber.number.toString());
                    },
                    onLongPress: () {
                      setState(() {
                        contact2 = null;
                        delNom(2);
                      });
                    },
                    child: contact2 == null
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : Text(contact2.fullName
                            .toString()
                            .substring(0, 1)
                            .toUpperCase()),
                  ),
                  ///contact 3
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: contact3 == null
                        ? Colors.white.withAlpha(50)
                        : Colors.green.withAlpha(150),
                    splashColor: Colors.green.withAlpha(150),
                    onPressed: () {
                      CallIt().callNow(contact3.phoneNumber.number.toString());
                    },
                    onLongPress: () {
                      setState(() {
                        contact3 = null;
                        delNom(3);
                      });
                    },
                    child: contact3 == null
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : Text(contact3.fullName
                            .toString()
                            .substring(0, 1)
                            .toUpperCase()),
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
          onPressed: () async{
            Contact contact;
            await Contacts().getContact().then((value) => contact = value);
            setState(() {
              if (contact1 == null) {
                contact1 = contact;
                getNumbers(contact1.phoneNumber.toString());
                print('contact 1 updated');
              } else if (contact2 == null) {
                contact2= contact;
                getNumbers(contact2.phoneNumber.toString());
                print('contact 2 updated');
              } else if (contact3 == null) {
                contact3= contact;
                getNumbers(contact3.phoneNumber.toString());
                print('contact 3 updated');
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Full();
                  },
                );
              }
            });
          },
          tooltip: 'Add Contacts',
          label: Text('Add'),
          icon: Icon(Icons.contacts),
        ),
      ),
    );
  }
}
