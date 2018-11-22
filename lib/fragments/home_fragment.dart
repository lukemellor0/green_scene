import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
            children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.greenAccent,
              child: new Align(
                alignment: Alignment.center,
                child: new Text(
                "NEW REPORT"
              ),
              )
            ),
          ]
        ),
        Row(
          children: [
            new ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              new OutlineButton(
                onPressed: null,
                child: new Text(
                  "Login",
                  style: new TextStyle(color: Colors.white),
                ),
              ),
              new RaisedButton(
                color: Colors.white,
                onPressed: null,
                child: new Text(
                  "Register",
                  style: new TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          ]
        ),
      ],
    );
  }

}