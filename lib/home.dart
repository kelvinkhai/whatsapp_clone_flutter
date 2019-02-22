import 'package:flutter/material.dart';

import 'package:whatsapp_clone_flutter/screens/call.dart';
import 'package:whatsapp_clone_flutter/screens/camera.dart';
import 'package:whatsapp_clone_flutter/screens/chat.dart';
import 'package:whatsapp_clone_flutter/screens/status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(text: "CHATS",),
            new Tab(text: "STATUS",),
            new Tab(text: "CALLS",)
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          // new Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 10.0),
          // ),
          new SizedBox(width: 15.0),
          new Icon(Icons.more_vert),
          new SizedBox(width: 15.0),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message, color: Colors.white,),
        onPressed: () {
          print("open chat");
        },
      ),
    );
  }
}