import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'permissions.dart';

class AlertBox extends StatelessWidget {
  final String deniedThing;

  AlertBox(this.deniedThing);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      //  elevation: 5.0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 350.0,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/giphy.gif',
                width: 100,
                height: 150,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              ' Give me Access of $deniedThing ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                ' It\'s Very Important to Give access of $deniedThing. This will help us to do things efficiently',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      exit(0);
                    },
                    //splashColor: Colors.redAccent,
                    child: Text(
                      'Exit',
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  onPressed: () {
                    Per().getAllPer(context);
                    Navigator.of(context).pop();
                  },
                  child: Text('Allow'),
                  color: Colors.redAccent,
                ),
              ],
            ),
          ],
        ),
      );
}

class Full extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      //  elevation: 5.0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 350.0,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/giphy.gif',
                width: 100,
                height: 150,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Contacts Full !',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Delete some contacts. \n You can do it by simply long pressing contact.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Ok'),
                  color: Colors.redAccent,
                ),
              ],
            ),
          ],
        ),
      );
}
