import 'package:flutter/material.dart';

class HomeTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Home"),
          new Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: new FlatButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed("/detail");
              },
              color: Colors.red,
              textColor: Colors.white,
              icon: const Icon(Icons.navigate_next, size: 18.0),
              label: const Text('Go To Details'),
            ),
          ),
        ],
      ),
    );
  }
}