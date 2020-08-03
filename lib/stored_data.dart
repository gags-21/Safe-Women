//import 'dart:async';
import 'package:safe_women/call_sms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Stored {


  ///Contacts names
  void setDataName1(String name1) async{
    SharedPreferences _prefs =await SharedPreferences.getInstance();
    _prefs.setString('nom1Name', name1);
  }
  void setDataName2(String name2) async{
    SharedPreferences _prefs =await SharedPreferences.getInstance();
    _prefs.setString('nom2Name', name2);
  }
  void setDataName3(String name3) async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('nom3Name', name3);
  }

  Future<String>  getDataName1() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print('${_prefs.containsKey('nom1Name')} ${_prefs.getString('nom1Name')}-- Shared1');
    return _prefs.getString('nom1Name');
  }
  Future<String>  getDataName2() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print('${_prefs.containsKey('nom2Name')} ${_prefs.getString('nom2Name')}-- Shared2');
    return _prefs.getString('nom2Name');
  }
  Future<String>  getDataName3() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print('${_prefs.containsKey('nom3Name')} ${_prefs.getString('nom3Name')}-- Shared3');
    return _prefs.getString('nom3Name');
  }

  ///contacts number

  void setDataNum1(String num1) async{
    SharedPreferences _prefs =await SharedPreferences.getInstance();
    _prefs.setString('nom1', num1);
  }
  void setDataNum2(String num2) async{
    SharedPreferences _prefs =await SharedPreferences.getInstance();
    _prefs.setString('nom2', num2);
  }
  void setDataNum3(String num3) async{
    SharedPreferences _prefs =await SharedPreferences.getInstance();
    _prefs.setString('nom3', num3);
  }

  Future<String>  getDataNum1() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print('${_prefs.containsKey('nom1')} ${_prefs.getString('nom1')}-- SharedNum1');
    return _prefs.getString('nom1');
  }
  Future<String>  getDataNum2() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print('${_prefs.containsKey('nom2')} ${_prefs.getString('nom2')}-- SharedNum2');
    return _prefs.getString('nom2');
  }
  Future<String>  getDataNum3() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print('${_prefs.containsKey('nom3')} ${_prefs.getString('nom3')}-- Shared3');
    return _prefs.getString('nom3');
  }




  void removeData1() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.remove('nom1');
    _prefs.remove('nom1Name');
    print('removed1');
  }
  void removeData2() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.remove('nom2');
    _prefs.remove('nom2Name');
    print('removed 2');
  }
  void removeData3() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.remove('nom3');
    _prefs.remove('nom3Name');
    print('removed 3');
  }
}
