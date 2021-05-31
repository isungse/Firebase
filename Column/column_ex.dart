/*
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//Firestore Plugin
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore Demo'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('cars').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return LinearProgressIndicator();

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                snapshot.data.docs[0]['brandname'],
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                snapshot.data.docs[0]['sold'].toString(),
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                snapshot.data.docs[1]['brandname'],
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                snapshot.data.docs[1]['sold'].toString(),
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          );
        },
      ),
    );
  }
}

 */
