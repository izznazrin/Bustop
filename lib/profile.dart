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
  late String _studentPhoneNumber;
  late bool _isLoading;

  final TextEditingController _phoneNumberController = TextEditingController();

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
      setState(() {
        _studentName = studentData['student_name'] ?? 'Unknown';
        _studentMatricNumber = studentData['student_matricnumber'] ?? 'Unknown';
        _studentPhoneNumber = studentData['student_phonenumber'] ?? 'Unknown';
      });
    }

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _updatePhoneNumber(String phoneNumber) async {
    final studentDoc = await FirebaseFirestore.instance
        .collection('Student')
        .where('student_uid', isEqualTo: _user!.uid)
        .limit(1)
        .get();
    if (studentDoc.docs.isNotEmpty) {
      final studentData = studentDoc.docs.first;
      await studentData.reference.update({'student_phonenumber': phoneNumber});
      setState(() {
        _studentPhoneNumber = phoneNumber;
      });
    }
  }

  void _showEditPhoneNumberDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Phone Number'),
          content: TextField(
            controller: _phoneNumberController,
            decoration: InputDecoration(hintText: 'Enter new phone number'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final newPhoneNumber = _phoneNumberController.text.trim();
                if (newPhoneNumber.isNotEmpty) {
                  _updatePhoneNumber(newPhoneNumber);
                }
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
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
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$_studentName $_studentMatricNumber',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    'Phone Number: $_studentPhoneNumber',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(width: 8),
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: _showEditPhoneNumberDialog,
                                  ),
                                ],
                              ),
                            ],
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
