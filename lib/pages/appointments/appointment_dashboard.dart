import 'package:flutter/material.dart';

class AppointmentDashboard extends StatefulWidget {
  @override
  _AppointmentDashboardState createState() => _AppointmentDashboardState();
}

class _AppointmentDashboardState extends State<AppointmentDashboard> {

  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'Easy book'),
    new Tab(text: 'Custom book'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Book an appointment"),
          elevation: 0.0,
          bottom: new TabBar(
            tabs: myTabs,
          ),
        ),
        body: new TabBarView(
          children: myTabs.map((Tab tab) {
            return tab.text == "Easy book" ?
                 _buildOneTapBookPage()
                :_buildCustomBookPage();
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildOneTapBookPage() {

    TextEditingController budgetController = new TextEditingController.fromValue(TextEditingValue(text: "500"));

    bool useMyLocation = true;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 38.0, horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: Icon(Icons.local_hospital, size: 60.0, color: Colors.white,), flex: 1,),
                  Expanded(child: Text("One-Tap Book", style: TextStyle(fontSize: 22.0, color: Colors.white),), flex: 3,),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Your Preferences", style: TextStyle(fontSize: 22.0),),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text("Budget for appointment",),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                child: TextField(
                  controller: budgetController,
                ),
              ),
            ],
          ), color: Colors.white,),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text("Location"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                child: Row(
                  children: <Widget>[
                    Checkbox(value: useMyLocation, onChanged: (value){
                      setState(() {
                        useMyLocation = value;
                      });
                    }),
                    Text("Use my location")
                  ],
                ),
              ),
            ],
          ), color: Colors.white,),
        )
      ],
    );
  }

  Widget _buildCustomBookPage() {

    Widget _buildHospitalCard(String hospitalName,String number, String address) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(hospitalName, style: TextStyle(fontSize: 22.0,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(number, style: TextStyle(fontSize: 16.0),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(address, style: TextStyle(fontSize: 16.0),),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Book an appointment at a specific hospital or clinic", style: TextStyle(fontSize: 22.0, color: Colors.deepOrange),),
        ),
        _buildHospitalCard("Bhagli Hospital","981273981", "Bibwewadi"),
        _buildHospitalCard("Chintamani Hospital","981273981", "Bibwewadi"),
        _buildHospitalCard("Sahyadri Hospital","981273981", "Bibwewadi"),
      ],
    );
  }

}


