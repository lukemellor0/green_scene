import 'package:flutter/material.dart';

class Flights extends StatelessWidget {


  //air travel logic
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  bool switchValue = false;
  List<String> _hauls = <String>['','Long', 'Medium', 'Short'];
  String _haul = '';
  num total;
  final myController = TextEditingController();
  final totalController = TextEditingController();

  double getHaulage(){
    switch (_haul){
      case "Long":
        return 776.15468;
      case "Medium":
        return 112.71684;
      case "Short":
        return 79.96473;
      default:
        return 0.0;
    }
  }

  calculate(){
    var haulage = getHaulage();
    switchValue ? haulage = haulage * 2 : null;
    total = (haulage *  int.parse(myController.text)) / 1000;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          // here we display the title corresponding to the fragment
          // you can instead choose to have a static title
          title: new Text("Flights"),
        ),
        body: new SafeArea(
        top: false,
        bottom: false,
        child: new Form(
            key: _formKey,
            autovalidate: true,
            child: new ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: <Widget>[
                new TextFormField(
                    keyboardType: TextInputType.text, // Use email input type for emails.
                    decoration: new InputDecoration(
                        hintText: 'Name of project ',
                        labelText: 'Project Name'
                    )
                ),
                new SwitchListTile(
                  title: const Text('Return Flight'),
                  value: switchValue,
                  onChanged: (bool value) { switchValue = value;  },
                  secondary: const Icon(Icons.flight_land),
                ),
                new TextFormField(
                    keyboardType: TextInputType.numberWithOptions(), // Use email input type for emails.
                    controller: myController,
                    decoration: new InputDecoration(
                        hintText: 'Passengers ',
                        labelText: 'Number of passengers on flight'
                    )
                ),
                new FormField(
                  builder: (FormFieldState state) {
                    return InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Haul Type',
                      ),
                      isEmpty: _haul == '',
                      child: new DropdownButtonHideUnderline(
                        child: new DropdownButton(
                          value: _haul,
                          isDense: true,
                          onChanged: (String newValue) {
                            _haul = newValue;
                            state.didChange(newValue);
                          },
                          items: _hauls.map((String value) {
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
                      child: const Text('Submit'),
                      onPressed:(){
                        calculate();
                        totalController.text = total.toString();
                      },
                    )
                ),
                new TextFormField(
                    controller: totalController
                ),
              ],
            )
        )
    )
    );
  }

}