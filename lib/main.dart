import 'package:flutter/material.dart';
import 'package:learninglsc/about.dart';


void main(){
  runApp(
    new MaterialApp(
      title: "Learning LSC",
      home: new Home(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new IconButton(icon: new Icon(Icons.person), onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
            builder: (BuildContext context){
              return AboutScreen();
            }
          ));
        }),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: new ListView(
        children: <Widget>[
          _buildListTileChat("Muhtar", "Halo", "12.00"),
          _buildListTileChat("Andi", "Selamat Datang", "13.00"),
          _buildListTileChat("Baso", "Apa Kabar!", "14.00"),
        ],
      ),
    );
  }

  Widget _buildListTileChat(title, subtitle, trailing){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: new BoxDecoration(
            color: Color(0XFFeeeeee),
            borderRadius: new BorderRadius.circular(10.0)
        ),
        child: new ListTile(
          leading: new Icon(Icons.person),
          title: new Text(title),
          subtitle: new Text(subtitle),
          trailing: new Text(trailing),
        ),
      ),
    );
  }
}
