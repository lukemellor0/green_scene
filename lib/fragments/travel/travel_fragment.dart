import 'package:flutter/material.dart';
import 'package:green_scene/fragments/travel/flights.dart';

class TravelFragment extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new TravelFragmentState();
  }
}

@override
class TravelFragmentState extends State<TravelFragment> {

  int _selectedActivityIndex = 0;

  _onSelectItem(int index) {
    setState(() => _selectedActivityIndex = index);
  }

  _getActivityWidget(int pos) {
    switch (pos) {
      case 0:
        return new Center(
          child: new RaisedButton(
            child: const Text('Submit'),
              onPressed:(){
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Flights()),
                );
              },
          )
        );
      case 1:
        return new Flights();
      default:
        return new Text("Error");
    }
  }

  //vehicle travel logic

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _getActivityWidget(_selectedActivityIndex);
  }

}

