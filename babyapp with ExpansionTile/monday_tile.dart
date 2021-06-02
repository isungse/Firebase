import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MonDayTile extends StatelessWidget {
  const MonDayTile({
    Key key,
    @required this.record,
  }) : super(key: key);

  final Record record;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Mon',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Color(0xFFAB47BC),
        ),
      ),
      key: ValueKey(
        record.name,
      ),
      children: [
        ListTile(
          title: Text(
            record.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 0.5,
          indent: 15,
          endIndent: 15,
        ),
        ListTile(
          title: Text(
            record.test,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.teal),
          ),
        ),
      ],
    );
  }
}

class Record {
  final String name;
  final String test;

  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
//        assert(map['votes'] != null),
        assert(map['test'] != null),
        test = map['test'],
        name = map['name'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);

  @override
  String toString() => "Record<$name>";
}
