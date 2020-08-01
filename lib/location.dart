//import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';
import 'call_sms.dart';

final String apiKey = 'AIzaSyBGkdS1HiqLwSFTrhQoL859UMAT8YbOXHg';

class Location {
  Position position;
  var address;

  void getCurrentLocation() async {
    position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    //print(position);
    final coordinates = Coordinates(position.latitude, position.longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    address = addresses.first;
    print('${address.addressLine},${address.featureName}');
    SmsIt().getLocation(address.addressLine);
  }
}
