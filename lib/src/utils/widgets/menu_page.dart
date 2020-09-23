import 'package:kashware/src/utils/common_styles.dart';
import 'package:kashware/src/utils/widgets/zoom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatelessWidget {

  final List<MenuItem> options = [
    MenuItem(Icons.filter_none, 'All News'),
    MenuItem(Icons.language, 'World'),
    MenuItem(Icons.flag, 'India'),
    MenuItem(Icons.all_out, 'Sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        //on swiping left
        if (details.delta.dx < -6) {
          Provider.of<MenuController>(context, listen: true).toggle();
        }
      },
      child: Container(
        padding: EdgeInsets.only(
            top: 62,
            left: 32,
            bottom: 8,
            right: MediaQuery.of(context).size.width / 2.9),
        color: primary,//Color(0xff454dff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Image.asset('assets/images/menu.png'),
                  ),
                  Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
                onTap: () {
                  Provider.of<MenuController>(context, listen: true).toggle();
                }
            ),
            // Spacer(),
            SizedBox(height: 30.0,),
            Container(
              padding: EdgeInsets.only(left: 15.0,top: 5.0, right: 15.0, bottom: 5.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/group_120.png', height: 40.0, width: 30.0,),
                  Text("My Feed", style: primaryDrawerStyle.copyWith(fontSize: 12.0),),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Text('Topic', style: primaryDrawerStyle.copyWith(fontSize: 18.0),),
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
            ),
            // Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: options.map((item) {
                return ListTile(
                  leading: Icon(
                    item.icon,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    item.title,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                );
              }).toList(),
            ),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  String title;
  IconData icon;

  MenuItem(this.icon, this.title);
}
