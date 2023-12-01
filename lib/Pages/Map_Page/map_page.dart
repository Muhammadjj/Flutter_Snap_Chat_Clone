import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snap_chat_clone/Pages/Map_Page/Components/google_map_method.dart';
import 'Components/custom_floating_ma_buttons.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // ! Completer Object and Initial (LatLng) .
  final Completer<GoogleMapController> completer = Completer();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(29.3544, 71.6911),
    zoom: 17.4746,
  );

  @override
  Widget build(BuildContext context) {
    var sizeHeight = MediaQuery.sizeOf(context).height;
    var sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
        floatingActionButton: getFooter(sizeHeight, sizeWidth),
        // ! floating button method .
        body: getBody(_kGooglePlex, completer));
  }
}
