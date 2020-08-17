import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:sms/sms.dart';
//import 'package:permission_handler/permission_handler.dart';

String nom1, nom2, nom3;

getNumbers(String nom) {
  if (nom1 == null || nom1 == 'null' && nom != 'null') {
    nom1 = nom;
    print('Stored in nom1 is $nom1');
  } else if (nom2 == null || nom2 == 'null' && nom != 'null') {
    nom2 = nom;
    print('Stored in nom2 is $nom2');
  } else if (nom3 == null || nom3 == 'null' && nom != 'null') {
    nom3 = nom;
    print('Stored in nom3 is $nom3');
  }else{
    print(' FULL-----------------------------');
  }
}

delNom(int i){
  if(i==1) nom1 =null;
  if(i==2) nom2 =null;
  if(i==3) nom3 =null;
}

class CallIt {
  void callNow(String number) async {
 //   var status = await Permission.contacts.status;
    if (number != null && number != 'null') {
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
    if (nom1 != null ) smsNom1(nom1);

    if (nom2 != null ) smsNom2(nom2);

    if (nom3 != null ) smsNom3(nom3);
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
