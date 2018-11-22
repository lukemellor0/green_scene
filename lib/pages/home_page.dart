
import 'package:green_scene/fragments/misc_fragment.dart';
import 'package:green_scene/fragments/reports_fragment.dart';
import 'package:green_scene/fragments/resources_fragment.dart';
import 'package:green_scene/fragments/spaces_fragment.dart';
import 'package:green_scene/fragments/travel/travel_fragment.dart';
import 'package:green_scene/fragments/home_fragment.dart';




import 'package:flutter/material.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Dashboard", Icons.dashboard),
    new DrawerItem("Travel Reports", Icons.airplanemode_active),
    new DrawerItem("Spaces Reports", Icons.location_city),
    new DrawerItem("Misc Reports", Icons.business_center),
    new DrawerItem("Archives", Icons.assignment),
    new DrawerItem("Resource", Icons.store)
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeFragment();
      case 1:
        return new TravelFragment();
      case 2:
        return new SpacesFragment();
      case 3:
      return new MiscFragment();
      case 4:
        return new ReportsFragment();
      case 5:
        return new ResourcesFragment();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Green Scene"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}