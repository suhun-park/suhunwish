import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Myfirst app",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomepage(),
    );
  }
}
class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "당근마켓",
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontFamily: "중나좋체 OTF Light.otf",
              ),
            ),
            backgroundColor: Colors.black,
            centerTitle: false,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuScreen()));
                },
              ),
              IconButton(
                icon: Icon(Icons.insert_emoticon_rounded),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlarmScreen()));
                },
              )
            ]),
        body: Container(
          child: Text("텍스트1"),
        ));
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두 번째"),
      ),
      body: Container(
        child: Text("텍스트2"),
      ),
    );
  }
}
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두 번째"),
      ),
      body: Container(
        child: Text("텍스트2"),
      ),
    );
  }
}
class AlarmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두 번째"),
      ),
      body: Container(
        child: Text("텍스트2"),
      ),
    );
  }
}
