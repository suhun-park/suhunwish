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
            title: const Text(
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
                icon: const Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuScreen()));
                },
              ),
              IconButton(
                icon: const Icon(Icons.notifications_active),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlarmScreen()));
                },
              )
            ]),
        body: Container(
          child: const Text("텍스트1"),
        ));
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,

        title: const TextField(
          decoration: InputDecoration(

              hintText: '중동',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              fillColor: Colors.grey,
              filled: true,

              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 3.0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 3.0))
          ),
        ),

      ),

      body: Container(
        child: const Text("텍스트2"),
      ),
    );
  }
}
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("중고거래 카테고리",
    style: TextStyle(
    color: Colors.white,
    fontFamily: "중나좋체 OTF Light.otf",
      ),
        ),
          centerTitle: false,
          elevation: 0.0,
          actions: <Widget>[
      IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MenuScreen_Setting()));
      },
    ),
    ]),
      body: Container(
        child: const Text("텍스트2"),
      ),
    );
  }
}
class AlarmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("두 번째"),
      ),
      body: Container(
        child: const Text("텍스트2"),
      ),
    );
  }
}
class MenuScreen_Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar()

    );
  }
}
