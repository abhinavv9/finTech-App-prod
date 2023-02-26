import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/utils/constants.dart';
import 'package:frontend/views/pages/profile_folder/profile_list_item.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isFirst = true;

  void reload() {
    setState(() {
      isFirst == false ? true : false;
    });
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,
    //     designSize: const Size(896, 414), minTextAdapt: true);
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var profileInfo = Column(
      children: <Widget>[
        Container(
          height: width * 0.05,
          width: width * 0.01,
          color: Colors.amber,
        ),
        Container(
          height: width * 0.4,
          width: width * 0.4,
          //margin: EdgeInsets.only(top: width * 3),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: width * 0.2,
                backgroundImage: const AssetImage('images/avatar.png'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: width * 0.10,
                  width: width * 0.10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    heightFactor: width * 0.2,
                    widthFactor: width * 0.2,
                    child: Icon(
                      LineAwesomeIcons.pen,
                      color: kDarkPrimaryColor,
                      size: width * 0.05,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.02),
        Text('Sankalp Srivastava',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: width * 0.045)),
        SizedBox(height: width * 0.025),
        Text(
          '6387242986@paytm',
          style: TextStyle(
            // fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        SizedBox(height: width * 0.04),
        Container(
          height: width * 0.12,
          width: width * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 3),
              color: Colors.white),
          child: Center(
            child: Text(
              'Upgrade to PRO',
              style: TextStyle(
                // fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: width * 0.05,
          color: Colors.blue,
        ),
        Icon(
          LineAwesomeIcons.arrow_left,
          size: width * 0.07,
          color: Colors.white,
        ),
        Expanded(child: SizedBox(width: width * 0.05)),
        // profileInfo,
        Icon(
          LineAwesomeIcons.cog,
          size: width * 0.07,
          color: Colors.white,
        ),

        SizedBox(width: width * 0.05),
      ],
    );

    // return ThemeSwitchingArea(
    return Scaffold(
      backgroundColor: Color(0xff2B3460),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: width * 0.125,
              // color: Colors.transparent,
            ),
            header,
            profileInfo,
            SizedBox(height: width * 0.05),
            Container(
              child: Column(
                children: <Widget>[
                  ProfileListItem(
                    icon: LineAwesomeIcons.user_shield,
                    text: 'Privacy',
                  ),
                  ProfileListItem(
                    icon: LineAwesomeIcons.history,
                    text: 'Purchase History',
                  ),
                  ProfileListItem(
                    icon: LineAwesomeIcons.question_circle,
                    text: 'Help & Support',
                  ),
                  ProfileListItem(
                    icon: LineAwesomeIcons.cog,
                    text: 'Settings',
                  ),
                  ProfileListItem(
                    icon: LineAwesomeIcons.user_plus,
                    text: 'Invite a Friend',
                  ),
                  ProfileListItem(
                    icon: LineAwesomeIcons.alternate_sign_out,
                    text: 'Logout',
                    hasNavigation: false,
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
