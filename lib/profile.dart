import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late User? _user;
  late String _studentName;
  late String _studentMatricNumber;
  late bool _isLoading;

  @override
  void initState() {
    super.initState();
    _user = FirebaseAuth.instance.currentUser;
    _isLoading = false;
    if (_user != null) {
      _loadStudentName();
    }
  }

  Future<void> _loadStudentName() async {
    setState(() {
      _isLoading = true;
    });

    final studentDoc = await FirebaseFirestore.instance
        .collection('Student')
        .where('student_uid', isEqualTo: _user!.uid)
        .limit(1)
        .get();
    if (studentDoc.docs.isNotEmpty) {
      final studentData = studentDoc.docs.first.data();
      final studentData2 = studentDoc.docs.first.data();
      setState(() {
        _studentName = studentData['student_name'] ?? 'Unknown';
        _studentMatricNumber =
            studentData2['student_matricnumber'] ?? 'Unknown';
      });
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            margin: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: _isLoading
                        ? CircularProgressIndicator()
                        : Text(
                            '$_studentName $_studentMatricNumber',
                            style: TextStyle(fontSize: 18),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
