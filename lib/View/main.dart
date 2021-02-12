import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zema_e_com/View/category.dart';
import 'package:zema_e_com/View/home.dart';
import 'package:zema_e_com/View/message.dart';
import 'package:zema_e_com/View/notification.dart';
import 'package:zema_e_com/View/profile.dart';
import 'package:zema_e_com/View/setting.dart';
import 'package:zema_e_com/View/shared.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ShellPage(),
    );
  }
}

class ShellPage extends StatefulWidget {
  @override
  _ShellPageState createState() => _ShellPageState();
}

class _ShellPageState extends State<ShellPage> {
  List<Widget> actionMenu = new List<Widget>();
  double appBarSize = 0.0;
  ScrollController _scrollController;
  GlobalKey<ScaffoldState> _mainScaffoldKey = new GlobalKey<ScaffoldState>();
  List<Widget> homePageWidget = new List<Widget>();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    actionMenu = Shared().GetActionButtons(false, context);

    GetHomePageWidget();

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
      key: _mainScaffoldKey,
      backgroundColor: Colors.grey[200],
      body: homePageWidget[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Badge(
          toAnimate: true,
          animationType: BadgeAnimationType.scale,
          position: BadgePosition.topEnd(top: -12, end: -20),
          badgeContent: Text(
            '4',
            style: TextStyle(color: Colors.white),
          ),
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        elevation: 100,
        notchMargin: 5,
        child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Expanded(
                child: SizedBox(
                  height: 60.0,
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.home, color: Colors.black, size: 24.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new Expanded(
                child: SizedBox(
                  height: 60.0,
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Badge(
                            toAnimate: true,
                            animationType: BadgeAnimationType.scale,
                            position: BadgePosition.topEnd(),
                            shape: BadgeShape.square,
                            borderRadius: BorderRadius.circular(7),
                            padding: EdgeInsets.all(3),
                            badgeContent: Text(
                              "New",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8),
                            ),
                            child: Icon(Icons.category,
                                color: Colors.black, size: 24.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new Expanded(
                child: SizedBox(
                  height: 60.0,
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.person, color: Colors.black, size: 24.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new Expanded(
                child: SizedBox(
                  height: 60.0,
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.message_rounded,
                              color: Colors.black, size: 24.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
      drawer: Drawer(),
    );
  }

  void GetHomePageWidget() {

    homePageWidget.add(HomePage());

    homePageWidget.add(CategoryPage());

    homePageWidget.add(ProfilePage());

    homePageWidget.add(MessagesPage());
  }
}
