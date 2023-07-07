import 'package:flutter/material.dart';
import 'package:bustop/busstoplist.dart';
import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bustop/riding.dart';

class BusStop {
  final String name;
  final double latitude;
  final double longitude;

  BusStop(
      {required this.name, required this.latitude, required this.longitude});
}

// Sample list of bus stops
List<BusStop> busStops = [
  BusStop(
      name: 'Kolej Kediaman Pewira', latitude: 1.861775, longitude: 103.099222),
  BusStop(
      name: 'PKU & CARE',
      latitude: 1.8561335089285704,
      longitude: 103.08425674117098),
  BusStop(
      name: 'G3 (Back)',
      latitude: 1.8578237774971171,
      longitude: 103.08711181778779),
  BusStop(name: 'FKEE', latitude: 1.859955, longitude: 103.089037),
  BusStop(
      name: 'Kolej Kediaman Tun Fatimah',
      latitude: 1.863189,
      longitude: 103.088996),
  BusStop(
      name: 'Kolej Kediaman Tun Dr. Ismail',
      latitude: 1.862917,
      longitude: 103.089213),
  BusStop(name: 'G3 (Front)', latitude: 1.859658, longitude: 103.086544),
  BusStop(name: 'Library', latitude: 1.858096, longitude: 103.083229),
  BusStop(
      name: 'Dewan Sultan Ibrahim', latitude: 1.858260, longitude: 103.081370),
  BusStop(name: 'FPTP', latitude: 1.861238, longitude: 103.081408),
  BusStop(name: 'FPTV', latitude: 1.862954, longitude: 103.081570),
  BusStop(name: 'FKAAB', latitude: 1.864361, longitude: 103.083192),
  BusStop(name: 'FKAAB 2', latitude: 1.864114, longitude: 103.085262),
  BusStop(
      name: 'FKEE (New Building)', latitude: 1.860598, longitude: 103.086141),
  BusStop(name: 'FKMP', latitude: 1.861335, longitude: 103.087968),
  BusStop(name: 'FKEE 2', latitude: 1.860276, longitude: 103.089091),
  BusStop(name: 'Arked', latitude: 1.857055, longitude: 103.087494),
  BusStop(name: 'ATM', latitude: 1.854348, longitude: 103.086318),
];

class JourneyModule extends StatefulWidget {
  @override
  JourneyModuleState createState() => JourneyModuleState();
}

class JourneyModuleState extends State<JourneyModule> {
  String nearestBusStop = '';
  int selectedBusStopIndex = 0;

  Future<void> _refresh() async {
    determineNearestBusStop();
  }

  @override
  void initState() {
    super.initState();
    determineNearestBusStop();
  }

  Future<Position> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error('Location permission denied');
      }
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    return position;
  }

  void determineNearestBusStop() async {
    Position position = await getCurrentLocation();
    final userLatitude = position.latitude;
    final userLongitude = position.longitude;

    double minDistance = double.infinity;
    String nearestStopName = '';

    for (var busStop in busStops) {
      final distance = calculateDistance(
          userLatitude, userLongitude, busStop.latitude, busStop.longitude);
      if (distance < minDistance) {
        minDistance = distance;
        nearestStopName = busStop.name;
      }
    }

    setState(() {
      nearestBusStop = nearestStopName;
      selectedBusStopIndex =
          busStops.indexWhere((busStop) => busStop.name == nearestStopName);
    });
  }

  double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    // Implementation of the Haversine formula to calculate distance between two coordinates
    // You can use any other distance calculation formula of your choice

    // Convert latitude and longitude to radians
    final dLat = _toRadians(lat2 - lat1);
    final dLon = _toRadians(lon2 - lon1);

    // Earth's radius in kilometers
    const earthRadius = 6371.0;

    // Haversine formula
    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_toRadians(lat1)) *
            cos(_toRadians(lat2)) *
            sin(dLon / 2) *
            sin(dLon / 2);
    final c = 2 * atan2(sqrt(a), sqrt(1 - a));
    final distance = earthRadius * c;

    return distance;
  }

  double _toRadians(double degrees) {
    return degrees * pi / 180;
  }

  void launchGoogleMapsNavigation(double latitude, double longitude) async {
    final address = '$latitude, $longitude';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Material(
                elevation: 4,
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'No Status',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 10, 20),
                          child: Image(
                            image: AssetImage('assets/images/busstop.png'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 20, 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'You\'re not at bus stop',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Go to the nearest bus stop.',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Nearest:'),
                                SizedBox(
                                  height: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    nearestBusStop,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 2,
                                    ),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (selectedBusStopIndex >= 0 &&
                                          selectedBusStopIndex <
                                              busStops.length) {
                                        final busStop =
                                            busStops[selectedBusStopIndex];
                                        launchGoogleMapsNavigation(
                                            busStop.latitude,
                                            busStop.longitude);
                                      }
                                    },
                                    child: Text(
                                      'Navigate',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: Align(
                          alignment: Alignment.center,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BusStopList(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                width: 150,
                                height: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Transform.rotate(
                                      angle: 45 * 3.1415926535 / 180,
                                      child: Icon(
                                        Icons.navigation,
                                        size: 24,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'View All Bus Stops',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Riding(
                            nearestBusStop: nearestBusStop,
                          ),
                        ),
                      );
                    },
                    child: Text('I\'m at ' + nearestBusStop + ' bus stop'),
                    style: ElevatedButton.styleFrom(
                      // Customize the button's appearance here
                      backgroundColor:
                          Colors.blue, // Set the button's background color
                      foregroundColor:
                          Colors.white, // Set the button's text color
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold), // Set the text style
                      padding: EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24), // Set the padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Set the border radius
                      ),
                      elevation: 4, // Set the button's elevation (shadow)
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
