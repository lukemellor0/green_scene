import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: EdgeInsets.all(30.0),
            child: Container(
            padding: EdgeInsets.all(5.0),
            color: Colors.greenAccent,
            child: Column(
              children: [
                Center(
                  child: Title(color: Colors.white, child: new Text('New Report'))
                ),
                Center(
                  child: new ButtonBar(
                    mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                    children: <Widget>[
                      new RaisedButton(
                        child: new Icon(Icons.airplanemode_active),
                        onPressed: null,
                      ),
                      new RaisedButton(
                        child: new Icon(Icons.location_city),
                        onPressed: null,
                      ),
                      new RaisedButton(
                        child: new Icon(Icons.business_center),
                        onPressed: null,
                      )
                    ],
                  ),
                )
              ]
            )
          )
        ),
        Container(
            padding: EdgeInsets.all(30.0),
            child: Container(
                padding: EdgeInsets.all(5.0),
                color: Colors.greenAccent,
                child: Column(
                    children: [
                      Center(
                          child: Title(color: Colors.white, child: new Text('Past reports'))
                      ),
                      Center(
                        child: new ButtonBar(
                          mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                          children: <Widget>[
                            new RaisedButton(
                              child: new Icon(Icons.airplanemode_active),
                              onPressed: null,
                            ),
                            new RaisedButton(
                              child: new Icon(Icons.location_city),
                              onPressed: null,
                            ),
                            new RaisedButton(
                              child: new Icon(Icons.business_center),
                              onPressed: null,
                            )
                          ],
                        ),
                      )
                    ]
                )
            )
        ),
        Container(
            padding: EdgeInsets.all(30.0),
            child: Container(
                padding: EdgeInsets.all(5.0),
                color: Colors.greenAccent,
                child: Column(
                    children: [
                      Center(
                          child: Title(color: Colors.white, child: new Text('Resources'))
                      ),
                      Center(
                        child: new ButtonBar(
                          mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                          children: <Widget>[
                            new RaisedButton(
                              child: new Icon(Icons.airplanemode_active),
                              onPressed: null,
                            ),
                            new RaisedButton(
                              child: new Icon(Icons.location_city),
                              onPressed: null,
                            ),
                            new RaisedButton(
                              child: new Icon(Icons.business_center),
                              onPressed: null,
                            )
                          ],
                        ),
                      )
                    ]
                )
            )
        )
      ],
    );
  }

}