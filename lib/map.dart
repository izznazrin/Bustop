import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

const LatLng initialBus = LatLng(1.856202, 103.083296);
const LatLng bustop1 = LatLng(1.861775, 103.099222);
const LatLng bustop2 = LatLng(1.8561335089285704, 103.08425674117098);
const LatLng bustop3 = LatLng(1.8578237774971171, 103.08711181778779);
const LatLng bustop4 = LatLng(1.859955, 103.089037);
const LatLng bustop5 = LatLng(1.863189, 103.088996);
const LatLng bustop6 = LatLng(1.862917, 103.089213);
const LatLng bustop7 = LatLng(1.859658, 103.086544);
const LatLng bustop8 = LatLng(1.858096, 103.083229);
const LatLng bustop9 = LatLng(1.858260, 103.081370);
const LatLng bustop10 = LatLng(1.861238, 103.081408);
const LatLng bustop11 = LatLng(1.862954, 103.081570);
const LatLng bustop12 = LatLng(1.864361, 103.083192);
const LatLng bustop13 = LatLng(1.864114, 103.085262);
const LatLng bustop14 = LatLng(1.860598, 103.086141);
const LatLng bustop15 = LatLng(1.861335, 103.087968);
const LatLng bustop16 = LatLng(1.860276, 103.089091);
const LatLng bustop17 = LatLng(1.857055, 103.087494);
const LatLng bustop18 = LatLng(1.854348, 103.086318);

class MapModule extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<MapModule> {
  late GoogleMapController mapController;
  final markerId = 'busMarker';

  //code untuk pin busstop dalam map
  Map<String, Marker> _markers = {};

  Future<void> addMarker(String id, LatLng location, String busstopname) async {
    var markerIcon;

    if (id == markerId) {
      markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(),
        'assets/images/busicon.png',
      );
    } else {
      markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(),
        'assets/images/busstopicon.png',
      );
    }

    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: InfoWindow(
        title: busstopname,
      ),
      icon: markerIcon,
    );

    _markers[id] = marker;
    setState(() {});
  }

  //code untuk route yang dilalui oleh bus
  List<LatLng> polylineCoordinate = [];

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result1 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop1.latitude, bustop1.longitude),
      PointLatLng(bustop2.latitude, bustop2.longitude),
    );

    if (result1.points.isNotEmpty) {
      result1.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result2 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop2.latitude, bustop2.longitude),
      PointLatLng(bustop3.latitude, bustop3.longitude),
    );

    if (result2.points.isNotEmpty) {
      result2.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result3 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop3.latitude, bustop3.longitude),
      PointLatLng(bustop4.latitude, bustop4.longitude),
    );

    if (result3.points.isNotEmpty) {
      result3.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result4 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop4.latitude, bustop4.longitude),
      PointLatLng(bustop5.latitude, bustop5.longitude),
    );

    if (result4.points.isNotEmpty) {
      result4.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result5 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop5.latitude, bustop5.longitude),
      PointLatLng(bustop6.latitude, bustop6.longitude),
    );

    if (result5.points.isNotEmpty) {
      result5.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result6 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop6.latitude, bustop6.longitude),
      PointLatLng(bustop7.latitude, bustop7.longitude),
    );

    if (result6.points.isNotEmpty) {
      result6.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result7 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop7.latitude, bustop7.longitude),
      PointLatLng(bustop8.latitude, bustop8.longitude),
    );

    if (result7.points.isNotEmpty) {
      result7.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result8 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop8.latitude, bustop8.longitude),
      PointLatLng(bustop9.latitude, bustop9.longitude),
    );

    if (result8.points.isNotEmpty) {
      result8.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result9 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop9.latitude, bustop9.longitude),
      PointLatLng(bustop10.latitude, bustop10.longitude),
    );

    if (result9.points.isNotEmpty) {
      result9.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result10 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop10.latitude, bustop10.longitude),
      PointLatLng(bustop11.latitude, bustop11.longitude),
    );

    if (result10.points.isNotEmpty) {
      result10.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result11 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop11.latitude, bustop11.longitude),
      PointLatLng(bustop12.latitude, bustop12.longitude),
    );

    if (result11.points.isNotEmpty) {
      result11.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result12 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop12.latitude, bustop12.longitude),
      PointLatLng(bustop13.latitude, bustop13.longitude),
    );

    if (result12.points.isNotEmpty) {
      result12.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result13 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop13.latitude, bustop13.longitude),
      PointLatLng(bustop14.latitude, bustop14.longitude),
    );

    if (result13.points.isNotEmpty) {
      result13.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result14 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop14.latitude, bustop14.longitude),
      PointLatLng(bustop15.latitude, bustop15.longitude),
    );

    if (result14.points.isNotEmpty) {
      result14.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result15 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop15.latitude, bustop15.longitude),
      PointLatLng(bustop16.latitude, bustop16.longitude),
    );

    if (result15.points.isNotEmpty) {
      result15.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result16 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop16.latitude, bustop16.longitude),
      PointLatLng(bustop17.latitude, bustop17.longitude),
    );

    if (result16.points.isNotEmpty) {
      result16.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result17 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop17.latitude, bustop17.longitude),
      PointLatLng(bustop18.latitude, bustop18.longitude),
    );

    if (result17.points.isNotEmpty) {
      result17.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }

    PolylineResult result18 = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyCWC0D4MexVfU7wBRq_jwzu0HCUaT-3_m8",
      PointLatLng(bustop18.latitude, bustop18.longitude),
      PointLatLng(bustop1.latitude, bustop1.longitude),
    );

    if (result18.points.isNotEmpty) {
      result18.points.forEach(
        (PointLatLng point) => polylineCoordinate.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }
  }

  //code untuk dapatkan user current location
  Future<Position> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        // Handle location permission denied
        return Future.error('Location permission denied');
      }
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    return position;
  }

  //code untuk bas bergerak
  void updateMarkerPosition(Position position) {
    LatLng newPosition = LatLng(position.latitude, position.longitude);
    Marker updatedMarker = _markers[markerId]!;
    updatedMarker = updatedMarker.copyWith(positionParam: newPosition);
    _markers[markerId] = updatedMarker;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    addMarker('busstop1', bustop1, 'HENTIAN 1: Kolej Kediaman Pewira');
    addMarker('busstop2', bustop2, 'HENTIAN 2: PKU & CARE');
    addMarker('busstop3', bustop3, 'HENTIAN 3: G3 (Back)');
    addMarker('busstop4', bustop4, 'HENTIAN 4: FKEE');
    addMarker('busstop5', bustop5, 'HENTIAN 5: Kolej Kediaman Tun Fatimah');
    addMarker('busstop6', bustop6, 'HENTIAN 6: Kolej Kediaman Tun Dr. Ismail');
    addMarker('busstop7', bustop7, 'HENTIAN 7: G3 (Front)');
    addMarker('busstop8', bustop8, 'HENTIAN 8: Library');
    addMarker('busstop9', bustop9, 'HENTIAN 9: Dewan Sultan Ibrahim');
    addMarker('busstop10', bustop10, 'HENTIAN 10: FPTP');
    addMarker('busstop11', bustop11, 'HENTIAN 11: FPTV');
    addMarker('busstop12', bustop12, 'HENTIAN 12: FKAAB');
    addMarker('busstop13', bustop13, 'HENTIAN 13: FKAAB 2');
    addMarker('busstop14', bustop14, 'HENTIAN 14: FKEE (New Building)');
    addMarker('busstop15', bustop15, 'HENTIAN 15: FKMP');
    addMarker('busstop16', bustop16, 'HENTIAN 16: FKEE 2');
    addMarker('busstop17', bustop17, 'HENTIAN 17: Arked');
    addMarker('busstop18', bustop18, 'HENTIAN 18: ATM');

    // Add the bus marker
    addMarker(markerId, initialBus, 'NDH 2996');

    // Listen to changes in driver location from Firebase
    FirebaseFirestore.instance
        .collection('driver_locations')
        .doc('driver1')
        .snapshots()
        .listen((snapshot) {
      if (snapshot.exists) {
        GeoPoint geoPoint = snapshot.get('location');
        Position position = Position(
          latitude: geoPoint.latitude,
          longitude: geoPoint.longitude,
          timestamp: DateTime.now(),
          accuracy: 0.0,
          altitude: 0.0,
          heading: 0.0,
          speed: 0.0,
          speedAccuracy: 0.0,
        );
        updateMarkerPosition(position);
      }
    });
    getPolyPoints();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getCurrentLocation(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Position position = snapshot.data as Position;
            LatLng currentLocation =
                LatLng(position.latitude, position.longitude);
            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: currentLocation,
                zoom: 16,
              ),
              onMapCreated: (controller) {
                setState(() {
                  mapController = controller;
                });
              },
              polylines: {
                Polyline(
                  polylineId: const PolylineId("route"),
                  points: polylineCoordinate,
                  color: Colors.blue,
                  width: 4,
                ),
              },
              markers: _markers.values.toSet(),
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
