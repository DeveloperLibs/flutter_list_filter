import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_filter/country.dart';

class CountyList extends StatelessWidget {
  final List<Country> country;

  CountyList({Key key, this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: country == null ? 0 : country.length,
        itemBuilder: (BuildContext context, int index) {
          return
                new Card(

                  child: new Container(
                    child: new Center(
                        child: new Column(
                      // Stretch the cards in horizontal axis
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        new Text(
                          // Read the name field value and set it in the Text widget
                          country[index].name,
                          // set some style to text
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.lightBlueAccent),
                        ),
                        new Text(
                          // Read the name field value and set it in the Text widget
                          "Capital:- " + country[index].capital,
                          // set some style to text
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.amber),
                        ),
                      ],
                    )),
                    padding: const EdgeInsets.all(15.0),
                  ),
                );

        });
  }
}
