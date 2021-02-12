import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zema_e_com/View/shared.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<Widget> actionMenu = new List<Widget>();
  double appBarSize = 0.0;
  GlobalKey<ScaffoldState> _mainScaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    actionMenu = Shared().GetActionButtons(false, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),
        shadowColor: Colors.grey[200],
        automaticallyImplyLeading: true,
        actions: actionMenu,
        leading: Badge(
          toAnimate: true,
          animationType: BadgeAnimationType.scale,
          position: BadgePosition.topStart(
            top: 15,
            start: 10,
          ),
          child: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              _mainScaffoldKey.currentState.openDrawer();
            },
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ListView(
             children: [
               Row(
                 children: [
                   Text("I'm Here"),
                 ],
               )
             ],
            )
          ],
        ),
      ),
    );
  }
}
