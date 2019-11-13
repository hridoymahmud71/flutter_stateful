import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stateful",
      home: FavouriteCity(),
    ));

class FavouriteCity extends StatefulWidget {
  @override
  State createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  var nameCity = "";

  @override
  Widget build(BuildContext context) {
    debugPrint("widget is created");
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful example"),
        ),
        body: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(children: <Widget>[
            TextField(
              onSubmitted: (String input) {
                setState(() {
                  nameCity = input;
                  debugPrint("State set");
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Your fav city is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ]),
        ));
  }
}
