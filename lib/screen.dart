import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safe_women/stored_data.dart';
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
  String name1, name2, name3, num1, num2, num3;

  @override
  void initState() {
    setState(() {
      Stored().getDataName1().then((value) => name1 = value);
      Stored().getDataName2().then((value) => name2 = value);
      Stored().getDataName3().then((value) => name3 = value);
      Stored().getDataNum1().then((value) {
        if (value != null || value != 'null') {
          num1 = value;
          getNumbers(num1.toString());
          print('sent1 => $num1');
        }
      });
      Stored().getDataNum2().then((value) {
        num2 = value;
        if (num2 != null || num2 != 'null') {
          getNumbers(num2.toString());
          print('sent2 => $num2');
        }
      });
      Stored().getDataNum3().then((value) {
        num3 = value;
        if (num3 != null || num3 != 'null') {
          getNumbers(num3.toString());
          print('sent3 => $num3');
        }
      });
    });

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
                CallIt().callNow('1091');
              },
            ),
          ),

//          Column(
//            children: <Widget>[
//              Text(contact1 == null
//                  ? name1 == null ? 'Select Contact yaaar' : name1
//                  : contact1.fullName.toString()),
//              Text(contact2 == null
//                  ? name2 == null ? 'Select Contact yaaar' : name2
//                  : contact2.fullName.toString()),
//              Text(contact3 == null
//                  ? name3 == null ? 'Select Contact yaaar' : name3
//                  : contact3.fullName.toString()),
//            ],
//          ),

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
                    color: contact1 == null && name1 == null
                        ? Colors.white.withAlpha(50)
                        : Colors.red.withAlpha(150),
                    splashColor: Colors.red.withAlpha(150),
                    onPressed: () {
                      contact1 == null && nom1 != null
                          ? CallIt().callNow(nom1)
                          : contact1 != null
                              ? CallIt().callNow(
                                  contact1.phoneNumber.number.toString())
                              : null;
                    },
                    onLongPress: () {
                      setState(() {
                        contact1 = null;
                        name1 = null;
                        delNom(1);
                        Stored().removeData1();
                      });
                    },
                    child: contact1 == null && name1 == null
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : contact1 == null
                            ? Text(name1.substring(0, 1).toUpperCase())
                            : Text(contact1.fullName
                                .toString()
                                .substring(0, 1)
                                .toUpperCase()),
                  ),

                  ///contact 2
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: contact2 == null && name2 == null
                        ? Colors.white.withAlpha(50)
                        : Colors.orange.withAlpha(150),
                    splashColor: Colors.orange.withAlpha(150),
                    onPressed: () {
                      contact2 == null && nom2 != null
                          ? CallIt().callNow(nom2)
                          : contact2 != null
                              ? CallIt().callNow(
                                  contact2.phoneNumber.number.toString())
                              : null;
                    },
                    onLongPress: () {
                      setState(() {
                        contact2 = null;
                        name2 = null;
                        delNom(2);
                        Stored().removeData2();
                      });
                    },
                    child: contact2 == null && name2 == null
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : contact2 == null
                            ? Text(name2.substring(0, 1).toUpperCase())
                            : Text(contact2.fullName
                                .toString()
                                .substring(0, 1)
                                .toUpperCase()),
                  ),

                  ///contact 3
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: contact3 == null && name3 == null
                        ? Colors.white.withAlpha(50)
                        : Colors.green.withAlpha(150),
                    splashColor: Colors.green.withAlpha(150),
                    onPressed: () {
                      contact3 == null && nom3 != null
                          ? CallIt().callNow(nom3)
                          : contact3 != null
                              ? CallIt().callNow(
                                  contact3.phoneNumber.number.toString())
                              : null;
                    },
                    onLongPress: () {
                      setState(() {
                        contact3 = null;
                        name3 = null;
                        delNom(3);
                        Stored().removeData3();
                      });
                    },
                    child: contact3 == null && name3 == null
                        ? Icon(
                            Icons.add,
                            size: 20,
                          )
                        : contact3 == null
                            ? Text(name3.substring(0, 1).toUpperCase())
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
          onPressed: () async {
            Contact contact;
            await Contacts().getContact().then((value) => contact = value);
            setState(() {
              if (contact1 == null && num1 == null) {
                contact1 = contact;
                getNumbers(contact1.phoneNumber.number.toString());
                Stored().setDataName1(contact1.fullName.toString());
                Stored().setDataNum1(contact1.phoneNumber.number.toString());
                print('contact 1 updated');
              } else if (contact2 == null && num2 == null) {
                contact2 = contact;
                getNumbers(contact2.phoneNumber.number.toString());
                Stored().setDataName2(contact2.fullName.toString());
                Stored().setDataNum2(contact2.phoneNumber.number.toString());
                print('contact 2 updated');
              } else if (contact3 == null && num3 == null) {
                contact3 = contact;
                getNumbers(contact3.phoneNumber.number.toString());
                Stored().setDataName3(contact3.fullName.toString());
                Stored().setDataNum3(contact3.phoneNumber.number.toString());
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
