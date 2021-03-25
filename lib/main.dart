

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_collection/employee.dart';
import 'package:http/http.dart' as http;

import 'employeeCard.dart';

void main() => runApp(
  MaterialApp(
    home: EmployeeList(),
  )
);

class EmployeeList extends StatefulWidget {
  @override
  _EmployeeListState createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {

  List<Employee> employee = List<Employee>();

  Future<List<Employee>> fetchJson() async {
    var url = 'https://us-central1-savvy-expense.cloudfunctions.net/getUser';
    var response = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});


    var myJsonData = List<Employee>();

    if(response.statusCode == 200) {
      var dataJson = json.decode(response.body);
      for(var dataJson in dataJson){
        myJsonData.add(Employee.fromJson(dataJson));
      }
    }
    return myJsonData;
  }

  @override
  void initState() {
    fetchJson().then((value) {
      setState(() {
        employee.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Awesomme employees',
          style: TextStyle(
            color: Colors.black
          ),
          ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: employee.map((employee)=> EmployeeCard(employee: employee)).toList(),
      ),
    );
  }

  
}



