import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Spacer(),
            Center(
              child: Text("Our Dashboard",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32
                  )
              ),
            ),
            Spacer(),
          ],
        )
      )
    );
  }
}