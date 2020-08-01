import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:sms/sms.dart';
import 'package:permission_handler/permission_handler.dart';

String nom1, nom2, nom3;

getNumbers(String nom) {
  if (nom1 == null) {
    nom1 = nom;
    print('Stored in nom1');
  } else if (nom2 == null) {
    nom2 = nom;
    print('Stored in nom2');
  } else if (nom3 == null) {
    nom3 = nom;
    print('Stored in nom3');
  }
}

class CallIt {
  void callNow(String number) async {
    var status = await Permission.contacts.status;
    if (status.isDenied) {
      print('plzzz Giveeeeee');
    }else{
      //const number = '1478523691';
      await FlutterPhoneDirectCaller.directCall(number);
    }
  }

//  void callNo1(String nom1){
//    FlutterPhoneDirectCaller.directCall(nom1);
//  }
}

class SmsIt {
  String location;

  void getLocation(String locationValue) {
    location = locationValue;
    //smsNow();
    if (nom1 != null) smsNom1(nom1);

    if (nom2 != null) smsNom2(nom2);

    if (nom3 != null) smsNom3(nom3);
  }

  void smsNow() async {
//    String locationSms = location;
//    SmsSender sender = SmsSender();
//    sender.sendSms(
//        SmsMessage('123456789', 'Please Help Me !! I am At == > $locationSms'));
  }

  SmsSender sender = SmsSender();

  void smsNom1(String nom1) async {
    String locationSms = location;
    sender.sendSms(SmsMessage(nom1, 'Help me == > $locationSms'));
  }

  void smsNom2(String nom2) async {
    String locationSms = location;
    // SmsSender sender = SmsSender();
    sender.sendSms(SmsMessage(nom2, 'I am in TROUBLE== > $locationSms'));
  }

  void smsNom3(String nom3) async {
    String locationSms = location;
    //  SmsSender sender = SmsSender();
    sender.sendSms(SmsMessage(nom3, 'Help Help ! == > $locationSms'));
  }
}
