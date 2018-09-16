import 'package:flutter/material.dart';

class DiscussionDashboard extends StatefulWidget {
  @override
  _DiscussionDashboardState createState() => _DiscussionDashboardState();
}

class _DiscussionDashboardState extends State<DiscussionDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask an official"),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0.0,
      ),
    );
  }
}


