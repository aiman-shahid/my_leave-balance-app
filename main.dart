import 'package:flutter/material.dart';

void main() {
  runApp(LeaveBalanceApp());
}

class LeaveBalanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University Leave Balance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LeaveBalancePage(),
    );
  }
}

class LeaveBalancePage extends StatefulWidget {
  @override
  _LeaveBalancePageState createState() => _LeaveBalancePageState();
}

class _LeaveBalancePageState extends State<LeaveBalancePage> {
  int leaveBalance = 20; // Initial leave balance

  void _subtractLeave() {
    setState(() {
      if (leaveBalance > 0) {
        leaveBalance--;
      }
    });
  }

  void _addLeave() {
    setState(() {
      leaveBalance++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Leave Balance'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Leave Balance:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$leaveBalance days',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _subtractLeave,
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _addLeave,
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to leave request screen
              },
              child: Text('Request Leave'),
            ),
          ],
        ),
      ),
    );
  }
}
