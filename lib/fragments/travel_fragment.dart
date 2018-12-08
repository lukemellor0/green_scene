import 'package:flutter/material.dart';
import 'package:green_scene/fragments/travel/vehicle.dart';


import './tabs/HomeTab1.dart';
import './tabs/HomeTab2.dart';
import './tabs/HomeTab3.dart';
import './travel/flights.dart';
import './travel/commute.dart';

class TravelFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: TabBar(
            indicatorColor: Colors.greenAccent,
              labelColor: Colors.greenAccent,
              unselectedLabelColor: Colors.green,
              tabs: [
                Tab(text: "Flights", icon: Icon(Icons.flight),),
                Tab(text: "Vehicle",icon: Icon(Icons.directions_car)),
                Tab(text: "Commute" ,icon: Icon(Icons.train)),
              ],
            ),
          
          body: new TabBarView(
            children: <Widget>[
              new Flights(),
              new Vehicle(),
              new Commute()
            ],
          ))
    );

  }

}

