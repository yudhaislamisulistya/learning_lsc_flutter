import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("About"),
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(
                bottom: 20.0,
              ),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: new Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            new Text(
              "Muhtar",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            )
          ],
        ),
      ),
    );
  }
}
