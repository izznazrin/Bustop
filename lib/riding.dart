import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

  Future<void> _refresh() async {
    // Perform any refresh actions here
    // You can add more code to refresh additional data if needed
  }
  String? selectedOption = 'Choose Destination';
  List<String> options = [
    'Choose Destination',
    'Kolej Kediaman Pewira',
    'Kolej Kediaman Tun Dr. Ismail'
  ];

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
                        zoom: 16,
                      ),
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
                                                setState(() {
                                                  selectedOption = newValue;
                                                  isDestinationChosen =
                                                      selectedOption !=
                                                          'Choose Destination';
                                                });
                                              },
                                        underline:
                                            Container(), // Remove the default underline
                                        items: options
                                            .map<DropdownMenuItem<String>>(
                                          (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
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
                        isButtonPressed = true; // Set isButtonPressed to true
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
        ),
      ),
    );
  }
}
