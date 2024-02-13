import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Location _locationController = Location();

  final Completer<GoogleMapController> _mapController =
      Completer<GoogleMapController>();

  LatLng? _currentPosition;

  BitmapDescriptor? markerbitmap;

  @override
  void initState() {
    super.initState();
    getLocationUpdates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPosition == null || markerbitmap == null
          ? const Center(
              child: Text("Loading..."),
            )
          : GoogleMap(
              onMapCreated: ((GoogleMapController controller) =>
                  _mapController.complete(controller)),
              initialCameraPosition: CameraPosition(
                target: _currentPosition!,
                zoom: 18,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId("current"),
                  icon: markerbitmap!,
                  position: _currentPosition!,
                ),
                Marker(
                  markerId: const MarkerId("near1"),
                  icon: markerbitmap!,
                  position: LatLng(_currentPosition!.latitude + 0.0001,
                      _currentPosition!.longitude + 0.0001),
                ),
                Marker(
                  markerId: const MarkerId("near2"),
                  icon: markerbitmap!,
                  position: LatLng(_currentPosition!.latitude - 0.0001,
                      _currentPosition!.longitude - 0.0001),
                ),
              },
            ),
    );
  }

  Future<void> _cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await _mapController.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: pos,
        zoom: 18,
      ),
    ));
  }

  Future<void> getLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await _locationController.serviceEnabled();
    markerbitmap = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(25, 30)),
        "assets/icons/ecoera_maps.png");

    if (_serviceEnabled) {
      _serviceEnabled = await _locationController.requestService();
    } else {
      return;
    }

    _permissionGranted = await _locationController.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _locationController.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationController.onLocationChanged
        .listen((LocationData currentLocation) {
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          _currentPosition =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
          _cameraToPosition(_currentPosition!);
        });
      }
    });
  }
}
