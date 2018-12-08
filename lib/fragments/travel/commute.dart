import 'package:flutter/material.dart';

class Commute extends StatelessWidget {

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  double total = 0.0;

  var name, bus, days, train, tram, subway, taxi;

  final myController = TextEditingController();
  final nameController = TextEditingController();
  final daysController = TextEditingController();
  final busController = TextEditingController();
  final trainController = TextEditingController();
  final tramController = TextEditingController();
  final subwayController = TextEditingController();
  final taxiController = TextEditingController();
  final totalController = TextEditingController();

  Key _k1 = new GlobalKey();
  Key _k2 = new GlobalKey();
  Key _k3 = new GlobalKey();
  Key _k4 = new GlobalKey();
  Key _k5 = new GlobalKey();
  Key _k6 = new GlobalKey();
  Key _k7 = new GlobalKey();

  calculate(){
    double day = days != null ? int.parse(daysController.text).toDouble() : 0.0;

    var busDistance = bus != null ? int.parse(busController.text).toDouble() * 0.10097 : 0.0;
    var trainDistance = train != null ? int.parse(trainController.text).toDouble() * 0.04424 : 0.0;
    var tramDistance = tram != null ? int.parse(tramController.text).toDouble() * 0.03967 : 0.0;
    var subwayDistance = subway != null ? int.parse(subwayController.text).toDouble() * 0.0376 : 0.0;
    var taxiDistance = taxi != null ? int.parse(taxiController.text).toDouble() * 0.15344 : 0.0;

    total = ((busDistance + trainDistance + tramDistance + subwayDistance + taxiDistance) * day) / 1000.0;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: new SafeArea(
        top: false,
        bottom: false,
          child: new Form(
            key: _formKey,
            autovalidate: true,
            child: new ListView(
              padding: EdgeInsets.all(30.0),
              children: <Widget>[
                new TextFormField(
                  key: _k1,
                    keyboardType: TextInputType.text, // Use email input type for emails.
                    controller: nameController,
                    decoration: new InputDecoration(
                        hintText: 'Unique commute identifier',
                        labelText: 'Commute'
                    )
                ),
                new TextField(
                    keyboardType: TextInputType.number, // Use email input type for emails.
                    controller: daysController,
                    onChanged: (text) {
                      days = text;
                    },
                    key: _k2,
                    decoration: new InputDecoration(
                        hintText: 'total amount of days commuting',
                        labelText: 'Days'
                    )
                ),
                new TextField(
                    keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                    controller: busController,
                    key: _k3,
                    onChanged: (text) {
                      bus = text;
                    },
                    decoration: new InputDecoration(
                        hintText: 'KM Distance commuting',
                        labelText: 'Bus'
                    )
                ), new TextField(
                    keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                    controller: trainController,
                    onChanged: (text) {
                      train = text;
                    },
                    key: _k4,
                    decoration: new InputDecoration(
                        hintText: 'KM Distance commuting',
                        labelText: 'Train'
                    )
                ), new TextField(
                    keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                    controller: tramController,
                    onChanged: (text) {
                      tram = text;
                    },
                    key: _k5,
                    decoration: new InputDecoration(
                        hintText: 'KM Distance commuting',
                        labelText: 'Tram'
                    )
                ), new TextField(
                    keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                    controller: subwayController,
                    onChanged: (text) {
                      subway = text;
                    },
                    key: _k6,
                    decoration: new InputDecoration(
                        hintText: 'KM Distance commuting',
                        labelText: 'Subway'
                    )
                ), new TextField(
                    keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                    controller: taxiController,
                    onChanged: (text) {
                      taxi = text;
                    },
                    key: _k7,
                    decoration: new InputDecoration(
                        hintText: 'KM Distance commuting',
                        labelText: 'Taxi'
                    )
                ),
                new Container(
                    padding: const EdgeInsets.only(left: 40.0, top: 20.0, right: 40.0),
                    child: new RaisedButton(
                      child: const Text('Calculate'),
                      onPressed:(){
                        calculate();
                        totalController.text = total.toString();
                      },
                    )
                ),
                new TextFormField(
                  controller: totalController,
                  enabled: false,
                ),
              ],
            )
          ),

        )

    );
  }

}