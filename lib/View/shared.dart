import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zema_e_com/View/notification.dart';
import 'package:zema_e_com/View/setting.dart';

class Shared {
  List<Widget> GetActionButtons(bool addSearchIcon, BuildContext context) {

    List<Widget> actionMenu = new List<Widget>();

    if (addSearchIcon) {
      actionMenu.add(
        IconButton(icon: Icon(Icons.search_outlined), onPressed: () {}),
      );
    }
    actionMenu.add(
      Badge(
        toAnimate: true,
        animationType: BadgeAnimationType.scale,
        position: BadgePosition.topEnd(
          top: 5,
          end: 7,
        ),
        badgeContent: Text(
          '5',
          style: TextStyle(
            color: Colors.white,
            fontSize: 8,
          ),
        ),
        child: IconButton(
          icon: Icon(
            Icons.notifications,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Notifications(),
              ),
            );
          },
        ),
      ),
    );
    actionMenu.add(
      IconButton(
        icon: Icon(
          Icons.settings,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Settings(),
            ),
          );
        },
      ),
    );

    return actionMenu;
  }
}
