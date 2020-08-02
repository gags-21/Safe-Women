import 'package:contact_picker/contact_picker.dart';
import 'call_sms.dart';
//import 'package:permission_handler/permission_handler.dart';

final ContactPicker _contactPicker = ContactPicker();
Contact _contact;

class Contacts {
  Future<Contact> getContact() async {
//    if(await Permission.contacts.status.isDenied)
//      {
//        print('access denied');
//      }else {
      _contact = await _contactPicker.selectContact();
      print('${_contact.toString()}, Name Called !!');
      return _contact;
    //}
  }

//  Future<String> getContactNumber()async{
//    _contact =await  _contactPicker.selectContact();
//    print('${_contact.phoneNumber.number}, Number Called');
//    return _contact.phoneNumber.number;
//  }

}
