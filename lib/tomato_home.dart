import 'package:flutter/material.dart';
import 'package:tomatochat/pages/call_screen.dart';
import 'package:tomatochat/pages/camera_screen.dart';
import 'package:tomatochat/pages/chat_screen.dart';
import 'package:tomatochat/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'New Chat'),
  const Choice(title: 'New Group'),
  const Choice(title: 'New Secret Channel'),
  const Choice(title: 'Voice Call'),
  const Choice(title: 'Video Call'),
  const Choice(title: 'Settings'),
];


class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {

  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    setState(() { // Causes the app to rebuild with the new _selectedChoice.
      _selectedChoice = choice;
    });
  }
  
  // Get objects ready
  TabController _tabController;
  CameraExampleHome _cameraExampleHome;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    _cameraExampleHome = new CameraExampleHome(); // Assign a new instance
    _cameraExampleHome.startCamera(); // Run the async camera fn to assign cameras
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tomato Chat"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new PopupMenuButton<Choice>( // overflow menu
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.map((Choice choice) {
                  return new PopupMenuItem<Choice>(
                    value: choice,
                    child: new Text(choice.title),
                  );
                }).toList();
              },
            ),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          _cameraExampleHome,
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
    );
  }
}
