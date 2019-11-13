import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Stateful",
  home:FavouriteCity(),
));

class FavouriteCity  extends StatefulWidget {

  @override
  State createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity>{

  var nameCity  = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful example"),
      ),
      body:Container(
        child: Column(
          children:<Widget>[
            TextField(
              onSubmitted: (String input){
                nameCity = input;
              },
            ),
            Text(
              "Your fav city is $nameCity",
              style: TextStyle(fontSize: 20.0),
            )
          ]
        ),
      )
    );
  }

}




