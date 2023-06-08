import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';

class Riding extends StatefulWidget {
  final String nearestBusStop;

  const Riding(
      {Key key = const Key('defaultKey'),
      this.nearestBusStop = 'defaultBusStop'})
      : super(key: key);

  @override
  State<Riding> createState() => _RidingState();
}

class _RidingState extends State<Riding> {
  bool showMap = false;
  bool isButtonPressed = false;

  String? selectedOption = 'Choose Destination';
  List<String> options = [
    'Choose Destination',
    'Kolej Kediaman Pewira',
    'PKU & CARE',
    'G3 (Back)',
    'FKEE',
    'Kolej Kediaman Tun Fatimah',
    'Kolej Kediaman Tun Dr. Ismail',
    'G3 (Front)',
    'Library',
    'Dewan Sultan Ibrahim',
    'FPTP',
    'FPTV',
    'FKAAB',
    'FKAAB 2',
    'FKEE (New Building)',
    'FKMP',
    'FKEE 2',
    'Arked',
    'ATM',
  ];

  final Map<String, LatLng> busStopLocations = {
    'Kolej Kediaman Pewira': LatLng(1.861775, 103.099222),
    'PKU & CARE': LatLng(1.8561335089285704, 103.08425674117098),
    'G3 (Back)': LatLng(1.8578237774971171, 103.08711181778779),
    'FKEE': LatLng(1.859955, 103.089037),
    'Kolej Kediaman Tun Fatimah': LatLng(1.863189, 103.088996),
    'Kolej Kediaman Tun Dr. Ismail': LatLng(1.862917, 103.089213),
    'G3 (Front)': LatLng(1.859658, 103.086544),
    'Library': LatLng(1.858096, 103.083229),
    'Dewan Sultan Ibrahim': LatLng(1.858260, 103.081370),
    'FPTP': LatLng(1.861238, 103.081408),
    'FPTV': LatLng(1.862954, 103.081570),
    'FKAAB': LatLng(1.864361, 103.083192),
    'FKAAB 2': LatLng(1.864114, 103.085262),
    'FKEE (New Building)': LatLng(1.860598, 103.086141),
    'FKMP': LatLng(1.861335, 103.087968),
    'FKEE 2': LatLng(1.860276, 103.089091),
    'Arked': LatLng(1.857055, 103.087494),
    'ATM': LatLng(1.854348, 103.086318),
  };

  final markerId = 'busMarker';
  LatLng initialBus = LatLng(1.856202, 103.083296);
  LatLng bustop1 = LatLng(1.861775, 103.099222);
  LatLng bustop2 = LatLng(1.8561335089285704, 103.08425674117098);
  LatLng bustop3 = LatLng(1.8578237774971171, 103.08711181778779);
  LatLng bustop4 = LatLng(1.859955, 103.089037);
  LatLng bustop5 = LatLng(1.863189, 103.088996);
  LatLng bustop6 = LatLng(1.862917, 103.089213);
  LatLng bustop7 = LatLng(1.859658, 103.086544);
  LatLng bustop8 = LatLng(1.858096, 103.083229);
  LatLng bustop9 = LatLng(1.858260, 103.081370);
  LatLng bustop10 = LatLng(1.861238, 103.081408);
  LatLng bustop11 = LatLng(1.862954, 103.081570);
  LatLng bustop12 = LatLng(1.864361, 103.083192);
  LatLng bustop13 = LatLng(1.864114, 103.085262);
  LatLng bustop14 = LatLng(1.860598, 103.086141);
  LatLng bustop15 = LatLng(1.861335, 103.087968);
  LatLng bustop16 = LatLng(1.860276, 103.089091);
  LatLng bustop17 = LatLng(1.857055, 103.087494);
  LatLng bustop18 = LatLng(1.854348, 103.086318);
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

    if (busStopLocations.containsKey(widget.nearestBusStop)) {
      final LatLng location = busStopLocations[widget.nearestBusStop]!;
      addMarker('busstop1', location, 'HENTIAN 1: ${widget.nearestBusStop}');
    }

    // Add the bus marker
    addMarker(markerId, initialBus, 'NDH 2996');

    // Listen to changes in driver location from Firebase
    FirebaseFirestore.instance
        .collection('driver_locations')
        .doc('driver1')
        .snapshots()
        .listen(
      (snapshot) {
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
      },
    );
  }

  Widget buildMapContainer() {
    return Container(
      height: 460,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Upcoming Bus',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            height: 375,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: LatLng(1.856202, 103.083296),
                        zoom: 14,
                      ),
                      markers: Set<Marker>.of(_markers.values),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Estimated arrival time:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Number of passengers:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Bus plate number:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            // Add your desired functionality here
                          },
                          child: Text(
                            'Check-in',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isDestinationChosen = selectedOption != 'Choose Destination';

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text('Journey'),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
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
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'At Bus Stop',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '  ' + widget.nearestBusStop + '  ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 40,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: IgnorePointer(
                              ignoring: isButtonPressed,
                              child: Opacity(
                                opacity: isButtonPressed ? 0.5 : 1.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: DropdownButton<String>(
                                    value: selectedOption,
                                    onChanged: isButtonPressed
                                        ? null // Disable the dropdown button if button is pressed
                                        : (String? newValue) {
                                            setState(
                                              () {
                                                selectedOption = newValue;
                                                isDestinationChosen =
                                                    selectedOption !=
                                                        'Choose Destination';
                                              },
                                            );
                                          },
                                    underline:
                                        Container(), // Remove the default underline
                                    items:
                                        options.map<DropdownMenuItem<String>>(
                                      (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (!showMap && isDestinationChosen)
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showMap = true;
                    isButtonPressed = true;
                    if (selectedOption == 'Kolej Kediaman Pewira') {
                      addMarker('busstop1', bustop1,
                          'HENTIAN 1: Kolej Kediaman Pewira');
                    } else if (selectedOption == 'PKU & CARE') {
                      addMarker('busstop2', bustop2, 'HENTIAN 2: PKU & CARE');
                    } else if (selectedOption == 'G3 (Back)') {
                      addMarker('busstop3', bustop3, 'HENTIAN 3: G3 (Back)');
                    } else if (selectedOption == 'FKEE') {
                      addMarker('busstop4', bustop4, 'HENTIAN 4: FKEE');
                    } else if (selectedOption == 'Kolej Kediaman Tun Fatimah') {
                      addMarker('busstop5', bustop5,
                          'HENTIAN 5: Kolej Kediaman Tun Fatimah');
                    } else if (selectedOption ==
                        'Kolej Kediaman Tun Dr. Ismail') {
                      addMarker('busstop6', bustop6,
                          'HENTIAN 6: Kolej Kediaman Tun Dr. Ismail');
                    } else if (selectedOption == 'G3 (Front)') {
                      addMarker('busstop7', bustop7, 'HENTIAN 7: G3 (Front)');
                    } else if (selectedOption == 'Library') {
                      addMarker('busstop8', bustop8, 'HENTIAN 8: Library');
                    } else if (selectedOption == 'Dewan Sultan Ibrahim') {
                      addMarker('busstop9', bustop9,
                          'HENTIAN 9: Dewan Sultan Ibrahim');
                    } else if (selectedOption == 'FPTP') {
                      addMarker('busstop10', bustop10, 'HENTIAN 10: FPTP');
                    } else if (selectedOption == 'FPTV') {
                      addMarker('busstop11', bustop11, 'HENTIAN 11: FPTV');
                    } else if (selectedOption == 'FKAAB') {
                      addMarker('busstop12', bustop12, 'HENTIAN 12: FKAAB');
                    } else if (selectedOption == 'FKAAB 2') {
                      addMarker('busstop13', bustop13, 'HENTIAN 13: FKAAB 2');
                    } else if (selectedOption == 'FKEE (New Building)') {
                      addMarker('busstop14', bustop14,
                          'HENTIAN 14: FKEE (New Building)');
                    } else if (selectedOption == 'FKMP') {
                      addMarker('busstop15', bustop15, 'HENTIAN 15: FKMP');
                    } else if (selectedOption == 'FKEE 2') {
                      addMarker('busstop16', bustop16, 'HENTIAN 16: FKEE 2');
                    } else if (selectedOption == 'Arked') {
                      addMarker('busstop17', bustop17, 'HENTIAN 17: Arked');
                    } else if (selectedOption == 'ATM') {
                      addMarker('busstop18', bustop18, 'HENTIAN 18: ATM');
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  minimumSize: Size(
                    double.infinity,
                    60,
                  ),
                ),
                child: Text(
                  'View Upcoming Bus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          if (showMap) buildMapContainer(),
        ],
      ),
    );
  }
}
