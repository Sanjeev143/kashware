// Created by Sanjeev Sangral on 19/09/20.
import 'package:flutter/material.dart';
import 'package:kashware/src/utils/common_styles.dart';
import 'package:kashware/src/utils/constants.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return drawer();
  }

  Widget drawer() {
    return AnimatedContainer(
      margin: EdgeInsets.only(left: 15.0),
      duration: Duration(milliseconds: 1000),
      decoration: BoxDecoration(border: Border(right: BorderSide(width: 1, color: Colors.grey))),
      width:  260.0,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.0,),
          InkWell(
            child: Row(
              children: [
                Image.asset('assets/images/menu.png'),
                Text('  Discover', style: primaryDrawerStyle,)
              ],
            ),
            onTap: (){
              setState(() {
                if(ConstantVal.drawerOpen){
                  ConstantVal.drawerOpen = false;
                }else{
                  ConstantVal.drawerOpen = true;
                }
              });
            },
          ),
          SizedBox(height: 30.0,),
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white,width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/group_120.png'),
                Text("My Feed", style: primaryDrawerStyle.copyWith(fontSize: 12.0),),
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Text('Topic', style: primaryDrawerStyle,),
          SizedBox(height: 10.0,),
          Container(
            height: 1.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [Colors.white, primary]
              )
            ),
          )
        ],
      )
    );
  }
}
