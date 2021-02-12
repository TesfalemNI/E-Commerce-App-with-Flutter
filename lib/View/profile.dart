import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zema_e_com/View/shared.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Widget> actionMenu = new List<Widget>();
  double appBarSize = 0.0;
  ScrollController _scrollController;
  GlobalKey<ScaffoldState> _mainScaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    actionMenu = Shared().GetActionButtons(
      false,
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
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
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Center(),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(2, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            "https://www.itl.cat/pngfile/big/16-162560_beautiful-indian-girl-hd-wallpapers-1080p-group-smart.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: "Tesfalem Nigussie   ",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {},
                                  child: FaIcon(
                                    FontAwesomeIcons.userEdit,
                                    size: 20,
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 22,
                        ),
                        child: Text(
                          "Developer",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.email_outlined,
                              size: 18,
                              color: Colors.grey[800],
                            ),
                          ),
                          TextSpan(
                            text: "  Hopealemmyking@gmail.com ",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.verified_user,
                              size: 15,
                              color: Colors.green[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.phone,
                              size: 18,
                              color: Colors.grey[800],
                            ),
                          ),
                          TextSpan(
                            text: "  +251-96-203-7555 ",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.error,
                              size: 15,
                              color: Colors.red[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 1.5,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    radius: 50,
                    highlightColor: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Favorite",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.favorite,
                                    size: 20,
                                    color: Colors.red[800],
                                  ),
                                ),
                                TextSpan(
                                  text: " 10",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    radius: 50,
                    highlightColor: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.grey[800],
                              ),
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.group_sharp,
                                    size: 20,
                                    color: Colors.blue[800],
                                  ),
                                ),
                                TextSpan(
                                  text: "  10",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    radius: 50,
                    highlightColor: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Following",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            textAlign: TextAlign.end,
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.directions_walk,
                                    size: 20,
                                    color: Colors.yellow[900],
                                  ),
                                ),
                                TextSpan(
                                  text: " 10",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.5,
            ),
            Container(
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(
                            Icons.history,
                            size: 22,
                            color: Colors.blue[800],
                          ),
                          Text(
                            "   History",
                            style: TextStyle(
                              fontSize:14,
                              color: Colors.grey[800],
                            ),
                          ),
                        ]),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 12,
                          color: Colors.blue[800],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(
                            Icons.local_offer_outlined,
                            size: 22,
                            color: Colors.blue[800],
                          ),
                          Text(
                            "   Offers",
                            style: TextStyle(
                              fontSize:14,
                              color: Colors.grey[800],
                            ),
                          ),
                        ]),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 12,
                          color: Colors.blue[800],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(
                            Icons.report_gmailerrorred_outlined,
                            size: 22,
                            color: Colors.blue[800],
                          ),
                          Text(
                            "   Reported Items",
                            style: TextStyle(
                              fontSize:14,
                              color: Colors.grey[800],
                            ),
                          ),
                        ]),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 12,
                          color: Colors.blue[800],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(
                            Icons.logout,
                            size: 20,
                            color: Colors.red[800],
                          ),
                          Text(
                            "   Logout",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red[800],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(children: [
                          Icon(
                            Icons.person_remove_sharp,
                            size: 11,
                            color: Colors.red[800],
                          ),
                          Text(
                            "   Deactivate account",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red[800],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
