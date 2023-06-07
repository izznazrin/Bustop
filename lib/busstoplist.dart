import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusStopList extends StatelessWidget {
  const BusStopList({Key? key}) : super(key: key);

  void launchGoogleMapsNavigation1() async {
    final address = '1.861775, 103.099222';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation2() async {
    final address = '1.8561335089285704, 103.08425674117098';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation3() async {
    final address = '1.8578237774971171, 103.08711181778779';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation4() async {
    final address = '1.859955, 103.089037';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation5() async {
    final address = '1.863189, 103.088996';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation6() async {
    final address = '1.862917, 103.089213';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation7() async {
    final address = '1.859658, 103.086544';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation8() async {
    final address = '1.858096, 103.083229';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation9() async {
    final address = '1.858260, 103.081370';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation10() async {
    final address = '1.861238, 103.081408';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation11() async {
    final address = '1.862954, 103.081570';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation12() async {
    final address = '1.864361, 103.083192';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation13() async {
    final address = '1.864114, 103.085262';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation14() async {
    final address = '1.860598, 103.086141';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation15() async {
    final address = '1.861335, 103.087968';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation16() async {
    final address = '1.860276, 103.089091';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation17() async {
    final address = '1.857055, 103.087494';
    final url = 'google.navigation:q=$address&mode=w';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps navigation';
    }
  }

  void launchGoogleMapsNavigation18() async {
    final address = '1.854348, 103.086318';
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
      appBar: AppBar(
        title: Text('Bus Stop List'),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
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
                                launchGoogleMapsNavigation1();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '2',
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
                            'PKU & CARE',
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
                                launchGoogleMapsNavigation2();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '3',
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
                            'G3 (Back)',
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
                                launchGoogleMapsNavigation3();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '4',
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
                            'FKEE',
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
                                launchGoogleMapsNavigation4();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '5',
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
                            'Kolej Kediaman Tun Fatimah',
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
                                launchGoogleMapsNavigation5();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '6',
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
                            'Kolej Kediaman Tun Dr. Ismail',
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
                                launchGoogleMapsNavigation6();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '7',
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
                            'G3 (Front)',
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
                                launchGoogleMapsNavigation7();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '8',
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
                            'Library',
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
                                launchGoogleMapsNavigation8();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '9',
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
                            'Dewan Sultan Ibrahim',
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
                                launchGoogleMapsNavigation9();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '10',
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
                            'FPTP',
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
                                launchGoogleMapsNavigation10();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '11',
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
                            'FPTV',
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
                                launchGoogleMapsNavigation11();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '12',
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
                            'FKAAB',
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
                                launchGoogleMapsNavigation12();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '13',
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
                            'FKAAB 2',
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
                                launchGoogleMapsNavigation13();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '14',
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
                            'FKEE (New Building)',
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
                                launchGoogleMapsNavigation14();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '15',
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
                            'FKMP',
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
                                launchGoogleMapsNavigation15();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '16',
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
                            'FKEE 2',
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
                                launchGoogleMapsNavigation16();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '17',
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
                            'Arked',
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
                                launchGoogleMapsNavigation17();
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
                              '18',
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
                            'ATM',
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
                                launchGoogleMapsNavigation18();
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
