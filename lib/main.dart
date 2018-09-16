import 'package:flutter/material.dart';
import 'package:health_pune/pages/alerts/alerts_dashboard.dart';
import 'package:health_pune/pages/appointments/appointment_dashboard.dart';
import 'package:health_pune/pages/dashboard_page.dart';
import 'package:health_pune/pages/discussion/discussion_dashboard.dart';
import 'package:health_pune/pages/donation/donate_dashboard.dart';
import 'package:health_pune/pages/emergency/emergency_dashboard.dart';
import 'package:health_pune/pages/history/medical_history_dashboard.dart';
import 'package:health_pune/pages/splash_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/dashboard": (context) {
          return DashboardPage();
        },
        "/emergency_dashboard": (context) {
          return EmergencyDashboard();
        },
        "/alerts_dashboard": (context) {
          return AlertsDashboard();
        },
        "/appointment_dashboard": (context) {
          return AppointmentDashboard();
        },
        "/medical_history_dashboard": (context) {
          return MedicalHistoryDashboard();
        },
        "/donate_dashboard": (context) {
          return DonateDashboard();
        },
        "/discussion_dashboard": (context) {
          return DiscussionDashboard();
        }
      },
    );
  }
}


