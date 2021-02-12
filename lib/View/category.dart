import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:zema_e_com/View/shared.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<Widget> actionMenu = new List<Widget>();
  GlobalKey<ScaffoldState> _mainScaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    actionMenu = Shared().GetActionButtons(false, context);

    // _scrollController = ScrollController()
    //   ..addListener(() {
    //     if (appBarSize <= 180.0) {
    //       setState(() {
    //         GetActionButtons(true);
    //       });
    //     } else if (appBarSize <= 220.0) {
    //       setState(() {
    //         GetActionButtons(false);
    //       });
    //     }
    //   });
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
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ), Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.green,
          ), Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.cyanAccent,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.lightGreen,
          ), Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.cyanAccent,
          ),
        ],
      ),
    );
  }
}
