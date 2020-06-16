import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:send_to_firebase/Employee.dart';
import 'main.dart';

class AddUserForm extends State<UserForm>{
  static TextEditingController teName, teID, teJob,
      teSalary, teComm, teManager,
      teHiredate, teDeptNo, teRN;

  Employee employee= new Employee() ;

 addEmployee() async{
   FirebaseDatabase _database = new FirebaseDatabase();
   await _database.reference().child('employees/${employee.id}').set(employee.toJson());
 }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        body: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  //Employee Name Input TextField
                  TextFormField(
                    controller: teName,
                    decoration: InputDecoration(
                      hintText: "Employee Name",
                    ),

                    onSaved: (value)=> employee.employeeName = value,
                  ),

                  //Employee ID Input TextField
                  TextFormField(
                    controller: teID,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Employee ID",
                    ),

                    onSaved: (value)=> employee.id=int.parse(value) ,
                  ),

                  //Job Input TextField
                  TextFormField(
                    controller: teJob,
                    decoration: InputDecoration(
                      hintText: "Employee Job",
                    ),
                    onSaved: (value)=> employee.employeeJob = value,
                  ),

                  //Salary Input TextField
                  TextFormField(
                    controller: teSalary,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Employee Salary",
                    ),
                    onSaved: (value)=> employee.employeeSalary=int.parse(value) ,
                  ),

                  //Comm Input TextField
                  TextFormField(
                    controller: teComm,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Employee Comm.",
                    ),
                    onSaved: (value)=> employee.employeeComm=int.parse(value) ,
                  ),

                  //Manager Input TextField
                  TextFormField(
                    controller: teManager,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Employee Manager",
                    ),
                    onSaved: (value)=> employee.employeeManager=int.parse(value) ,
                  ),

                  //Hire Date Input TextField
                  TextFormField(
                    controller: teHiredate,
                    decoration: InputDecoration(
                      hintText: "Employee Hire Date",
                    ),
                    onSaved: (value)=> employee.heridate = value,
                  ),

                  //Depart. No. Input TextField
                  TextFormField(
                    controller: teDeptNo,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Employee Depart",
                    ),
                    onSaved: (value)=> employee.employeeDepart=int.parse(value) ,
                  ),

                  //RN Input TextField
                  TextFormField(
                    controller: teRN,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Employee R.N",
                    ),
                    onSaved: (value)=> employee.rn=int.parse(value) ,
                  ),

                  RaisedButton(
                    onPressed: () async{
                       _formKey.currentState.save();
                      await addEmployee();
                    },
                    child: Text("Add Employee"),
                  )
                ],
              ),
            ),
        ),
    );
  }
}