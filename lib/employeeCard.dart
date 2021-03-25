import 'package:flutter/material.dart';
import 'package:flutter_json_collection/employee.dart';

class EmployeeCard extends StatelessWidget {

  final Employee employee;
  EmployeeCard({this.employee});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Username: '+employee.username,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueAccent
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Behavior: '+employee.behavior,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueAccent
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Balance: '+employee.balance.toString(),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueAccent
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Email: '+employee.email,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueAccent
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Profile: '+employee.profile,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueAccent
              ),
            ),
          ),
        ],
      ),
    );
  }
}