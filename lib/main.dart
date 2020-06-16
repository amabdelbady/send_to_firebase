import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:send_to_firebase/user_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'User Form'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
/**addUser(Employee user) async {
  DatabaseReference _counterRef;
  DatabaseReference _userRef;
  final TransactionResult transactionResult =
  await _counterRef.runTransaction((MutableData mutableData) async {
    mutableData.value = (mutableData.value ?? 0) + 1;

    return mutableData;
  });

  if (transactionResult.committed) {
    _userRef.push().set(<String, String>{
      "rn": "" + user.rn.toString(),
      "empno": "" + user.id.toString(),
      "ename": "" + user.employeeName,
      "job": "" + user.employeeJob,
      "mgr": "" + user.employeeManager.toString(),
      "hiredate": "" + user.heridate.toString(),
      "sal": "" + user.employeeSalary.toString(),
      "comm": "" + user.employeeComm.toString(),
      "deptno": "" + user.employeeDepart.toString(),
    }).then((_) {
      print('Transaction  committed.');
    });
  } else {
    print('Transaction not committed.');
    if (transactionResult.error != null) {
      print(transactionResult.error.message);
    }
  }
}
**/

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: UserForm(),
          ),
        )

    );
  }
}

class UserForm extends StatefulWidget
{
  @override
  State <StatefulWidget> createState(){
    return AddUserForm();
  }
}

