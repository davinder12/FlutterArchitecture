import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsiveuiflutter/util/BaseListWidget.dart';
import 'package:responsiveuiflutter/util/BaseStatefulWidget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Map extends BaseStatefulWidget{
  @override
  State<StatefulWidget> get layoutRes => _MapState();
}

class _MapState extends BaseListWidget<Map>{

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(37.7749, -122.4194); // Default map location

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Map")),
          body:  GoogleMap(
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
    );


  }
}