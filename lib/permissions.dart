import 'package:permission_handler/permission_handler.dart';
import 'alert_box.dart';
import 'package:flutter/material.dart';

class Per {
  void getAllPer(context) async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.locationAlways,
      Permission.contacts,
      Permission.sms,
      Permission.phone,
    ].request();

    if (await Permission.contacts.isPermanentlyDenied  || await Permission.contacts.isDenied) {
      showDialog(context: context, builder: (context) => AlertBox('Contacts'),barrierDismissible: false);
    }else if(await Permission.phone.isPermanentlyDenied || await Permission.phone.isDenied){
      showDialog(context: context, builder: (context) => AlertBox('Calls'),barrierDismissible: false);
    }else if(await Permission.sms.isPermanentlyDenied || await Permission.sms.isDenied){
      showDialog(context: context, builder: (context) => AlertBox('Sms'),barrierDismissible: false);
    }else if(await Permission.locationWhenInUse.isPermanentlyDenied || await Permission.locationWhenInUse.isDenied){
      showDialog(context: context, builder: (context) => AlertBox('Location'),barrierDismissible: false);
    }


    print(statuses[Permission.location]);
    print('${statuses[Permission.locationAlways]} location always');
    print(statuses[Permission.contacts]);
    print(statuses[Permission.sms]);
    print(statuses[Permission.phone]);
  }
}
