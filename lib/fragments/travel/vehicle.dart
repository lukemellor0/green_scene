import 'package:flutter/material.dart';

class Vehicle extends StatelessWidget {

  //air travel logic
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  bool switchValue = false;
  List<String> _vehicles = <String>['','Petrol', 'Diesel', 'Hybrid', 'Motorcycle', 'Offroader 4x4', 'Sports'];
  List<String> _metrics = <String>['Miles' , 'Kilometers'];
  String _metric = 'Miles';
  String _vehicle = '';
  num total;
  final myController = TextEditingController();
  final totalController = TextEditingController();

  double _result = 0.0;
  Key _k1 = new GlobalKey();
  Key _k2 = new GlobalKey();


  double toKM(miles){
    return miles / 0.62137;
  }

  double getVehicleType(){
    switch (_vehicle){
      case "Petrol":
        return 0.18368;
      case "Diesel":
        return 0.17758;
      case "Hybrid":
        return 0.04531;
      case "Motorcycle":
        return 0.11529;
      case "Offroader 4X4":
        return 0.21795;
      case "Sports":
        return 0.23456;
      default:
        return 0.0;
    }
  }

  calculate(){
    var vehicleType = getVehicleType();
    var distance = (double.parse(myController.text));
    if(_metric == "Miles"){
      distance = toKM(distance);
    }
    total =  (distance * vehicleType) / 1000;
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
                    decoration: new InputDecoration(
                        hintText: 'Unique location identifier',
                        labelText: 'Destination'
                    )
                ),
                new TextFormField(
                    keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                    controller: myController,
                    key: _k2,
                    decoration: new InputDecoration(
                        hintText: 'Distance driven',
                        labelText: 'KM Driven'
                    )
                ),
                new FormField(
                  builder: (FormFieldState state) {
                    return InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Distance metric',
                      ),
                      isEmpty: _metric == '',
                      child: new DropdownButtonHideUnderline(
                        child: new DropdownButton(
                          value: _metric,
                          isDense: true,
                          onChanged: (String newValue) {
                            _metric = newValue;
                            state.didChange(newValue);
                          },
                          items: _metrics.map((String value) {
                            return new DropdownMenuItem(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    );
                  },
                ),
                new FormField(
                  builder: (FormFieldState state) {
                    return InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Vehicle Type',
                      ),
                      isEmpty: _vehicle == '',
                      child: new DropdownButtonHideUnderline(
                        child: new DropdownButton(
                          value: _vehicle,
                          isDense: true,
                          onChanged: (String newValue) {
                            _vehicle = newValue;
                            state.didChange(newValue);
                          },
                          items: _vehicles.map((String value) {
                            return new DropdownMenuItem(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    );
                  },
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