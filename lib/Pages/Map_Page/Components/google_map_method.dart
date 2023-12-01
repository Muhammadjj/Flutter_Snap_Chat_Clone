import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Widget getBody(kGooglePlex, completer) {
  return GoogleMap(
    mapType: MapType.hybrid,
    myLocationButtonEnabled: false,
    initialCameraPosition: kGooglePlex,
    onMapCreated: (GoogleMapController controller) {
      completer.complete(controller);
    },
  );
}
