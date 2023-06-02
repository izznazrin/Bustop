import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusStopList extends StatelessWidget {
  const BusStopList({Key? key}) : super(key: key);

  Future<void> _launchGoogleMaps() async {
    final Uri _url =
        Uri.parse('https://maps.google.com/?q=1.861775,103.099222');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Stop List'),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 65,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromARGB(255, 114, 192, 255),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        'Kolej Kediaman Pewira',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      margin: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 114, 192, 255),
                          width: 2,
                        ),
                      ),
                      child: Transform.rotate(
                        angle: 45 * 3.1415926535 / 180,
                        child: GestureDetector(
                          onTap: () {
                            _launchGoogleMaps();
                          },
                          child: Icon(
                            Icons.navigation,
                            size: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Add other widgets here
          ],
        ),
      ),
    );
  }
}
