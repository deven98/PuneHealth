import 'package:flutter/material.dart';

class DonateDashboard extends StatefulWidget {
  @override
  _DonateDashboardState createState() => _DonateDashboardState();
}

class _DonateDashboardState extends State<DonateDashboard> {
  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'Donate'),
    new Tab(text: 'Start Campaign'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Stack(children: [
        Scaffold(
          backgroundColor: Color(0xFFEEEEEE),
          appBar: AppBar(
            title: Text("Donate"),
            backgroundColor: Colors.green,
            elevation: 0.0,
            bottom: new TabBar(
              tabs: myTabs,
            ),
          ),
          body: Column(
            children: <Widget>[
              Row(),
              _buildDonateCard("Donate to ABC", "80,000", "06/10/2018"),
              _buildDonateCard("Donate to CDE", "90,000", "01/11/2018"),
              _buildDonateCard("Donate to EFG", "30,000", "04/09/2018")
            ],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FlatButton(onPressed: () {}, color: Colors.green, child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Donate", style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              )),
            ),
          ),
        )
      ]),
    );
  }

  Widget _buildDonateCard(String title, String amount, String endDate) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: InkWell(
          onTap: (){},
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.account_circle,
                  size: 50.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        amount,
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        endDate,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
