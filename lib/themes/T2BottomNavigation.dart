import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../pages/about_the_app_page.dart';
import '../../../../pages/diabetic_page.dart';
import '../../../../pages/home_page.dart';
import '../../../../pages/my_report_page.dart';

class T6BottomNavigation extends StatefulWidget {
  static String tag = '/T6BottomNavigation';

  @override
  T6BottomNavigationState createState() => T6BottomNavigationState();
}

const t6_ic_activity = "images/theme6/t6_ic_activity.svg";
const t6_ic_list = "images/theme6/t6_ic_list.svg";
const t6_lbl_activity = "Home";
const t6_lbl_health = "My Report";
const t6_lbl_meals = "Diabetic";
const t6_lbl_work = "About";
const t6_lbl_cards = "Cards";
const t6_ic_meal = "images/theme6/t6_ic_running.svg";
const t6_ic_work_bn = "images/theme6/t6_ic_work_bn.svg";
const t6colorPrimary = Color.fromARGB(255, 49, 159, 52);
const t6textColorSecondary = Color(0XFF747474);
const t6white = Color(0XFFffffff);

Widget text(
  String? text, {
  Color? textColor,
  var fontFamily,
  var isCentered = false,
  var maxLine = 1,
  var latterSpacing = 0.5,
  bool textAllCaps = false,
  var isLongText = false,
  bool lineThrough = false,
}) {
  return Text(
    textAllCaps ? text!.toUpperCase() : text!,
    textAlign: isCentered ? TextAlign.center : TextAlign.start,
    maxLines: isLongText ? null : maxLine,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 12,
      fontFamily: fontFamily ?? null,
      height: 1.5,
      letterSpacing: latterSpacing,
      decoration:
          lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
    ),
  );
}

class T6BottomNavigationState extends State<T6BottomNavigation> {
  var isSelected = 0;
  final List<Widget> _pageOptions = [
    HomePage(),
    MyReportPage(),
    DiabeticPage(),
    AboutTheAppPage(),
  ];
  Widget tabItem(var pos, var icon, var name) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = pos;
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          decoration: isSelected == pos
              ? BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: t6colorPrimary,
                  borderRadius: BorderRadius.circular(8))
              : BoxDecoration(),
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(
                  icon,
                  width: 20,
                  height: 20,
                  color: isSelected == pos ? t6white : t6textColorSecondary,
                ),
                text(
                  name,
                  textColor: isSelected == pos ? t6white : t6textColorSecondary,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            height: 70,
            decoration: BoxDecoration(
              color: context.scaffoldBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: shadowColorGlobal,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: tabItem(0, t6_ic_activity, t6_lbl_activity),
                  flex: 1,
                ),
                Flexible(
                  child: tabItem(1, t6_ic_list, t6_lbl_health),
                  flex: 1,
                ),
                Flexible(
                  child: tabItem(2, t6_ic_meal, t6_lbl_meals),
                  flex: 1,
                ),
                Flexible(
                  child: tabItem(3, t6_ic_work_bn, t6_lbl_work),
                  flex: 1,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: _pageOptions.elementAt(isSelected),
      ),
    );
  }
}
