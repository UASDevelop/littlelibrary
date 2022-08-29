import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Googlemap extends StatefulWidget {
  @override
  State<Googlemap> createState() => _GooglemapState();
}

class _GooglemapState extends State<Googlemap> {
  late GoogleMapController mapController;
  final Map<String, Marker> _markers = {};

  get locations => null;
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  final LatLng _center = const LatLng(45.521563, -122.677433);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(0, 0),
            zoom: 2,
          ),
          markers: _markers.values.toSet(),
        ),
      ),


    );
  }
}


