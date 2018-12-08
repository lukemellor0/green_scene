import 'package:flutter/material.dart';

class MiscFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double total=0.0;
    final myController = TextEditingController();
    final nameController = TextEditingController();
    final paperController = TextEditingController();
    final hotelsController = TextEditingController();
    final setdesignController = TextEditingController();
    final cateringController = TextEditingController();
    final plasticsController = TextEditingController();
    final equipmentController = TextEditingController();
    final totalController = TextEditingController();

    Key _k1 = new GlobalKey();
    Key _k2 = new GlobalKey();
    Key _k3 = new GlobalKey();
    Key _k4 = new GlobalKey();
    Key _k5 = new GlobalKey();
    Key _k6 = new GlobalKey();
    Key _k7 = new GlobalKey();
    // TODO: implement build
    final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
    List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
    String _color = '';

    calculate() {
//      var vehicleType = 1;
//      switchValue ? vehicleType = vehicleType * 2 : null;
//      total = (int.parse(myController.text) * vehicleType) / 1000;
    }

    return new SafeArea(
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
                      labelText: 'Name'
                  )
              ),
              new TextFormField(
                  keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                  controller: paperController,
                  key: _k2,
                  decoration: new InputDecoration(
                      hintText: 'Price paid for total paper',
                      labelText: 'Paper'
                  )
              ),
              new TextFormField(
                  keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                  controller: hotelsController,
                  key: _k3,
                  decoration: new InputDecoration(
                      hintText: 'Price paid for hotel expenses',
                      labelText: 'Hotels'
                  )
              ), new TextFormField(
                  keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                  controller: setdesignController,
                  key: _k4,
                  decoration: new InputDecoration(
                      hintText: 'Price paid for set design expenses',
                      labelText: 'Set Design'
                  )
              ), new TextFormField(
                  keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                  controller: cateringController,
                  key: _k5,
                  decoration: new InputDecoration(
                      hintText: 'Price paid for catering',
                      labelText: 'Catering'
                  )
              ), new TextFormField(
                  keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                  controller: plasticsController,
                  key: _k6,
                  decoration: new InputDecoration(
                      hintText: 'Price paid for total plastics',
                      labelText: 'Plastics'
                  )
              ), new TextFormField(
                  keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                  controller: equipmentController,
                  key: _k7,
                  decoration: new InputDecoration(
                      hintText: 'Price paid for small electronic devices',
                      labelText: 'Equipment'
                  )
              ),
              new Container(
                  padding: const EdgeInsets.only(left: 40.0, top: 20.0, right: 40.0),
                  child: new RaisedButton(
                    child: const Text('Submit'),
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

    );

  }

}