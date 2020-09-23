// Created by Sanjeev Sangral on 19/09/20.
import 'package:flutter/material.dart';
import 'package:kashware/src/screens/swipe_feed_page.dart';
import 'package:kashware/src/utils/common_styles.dart';
import 'package:kashware/src/utils/constants.dart';
import 'package:kashware/src/utils/drawer.dart';
import 'package:kashware/src/utils/widgets/menu_page.dart';
import 'package:kashware/src/utils/widgets/zoom_scaffold.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{
  MenuController menuController;

  @override
  void initState() {
    super.initState();

    menuController = new MenuController(
      vsync: this,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    menuController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => menuController,
      child: ZoomScaffold(
        menuScreen: MenuScreen(),
        contentScreen: Layout(
            contentBuilder: (cc) => SwipeFeedPage()),
      ),
    );


    //   Scaffold(
    //     backgroundColor: primary,
    //     body: Padding(
    //       padding: const EdgeInsets.all(10.0),
    //       child: Row(
    //         children: [
    //           ConstantVal.drawerOpen? NavigationDrawer():
    //           Container(),
    //           ListView(
    //             scrollDirection: Axis.horizontal,
    //             shrinkWrap: true,
    //             children: [
    //               Container(
    //                 height: MediaQuery.of(context).size.height,
    //                 width: ConstantVal.drawerOpen? MediaQuery.of(context).size.width - 300.0:
    //                 MediaQuery.of(context).size.width - 20.0,
    //                 child: Column(
    //                   children: [
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Row(
    //                           children: [
    //                             InkWell(
    //                               child: Image.asset('assets/images/main_menu.png',width: 30.0,height: 30.0,),
    //                               onTap: (){
    //                                 setState(() {
    //                                   if(ConstantVal.drawerOpen){
    //                                     ConstantVal.drawerOpen = false;
    //                                   }else{
    //                                     ConstantVal.drawerOpen = true;
    //                                   }
    //                                 });
    //                               },
    //                             ),
    //                             Text('  My Feeds', style: primaryDrawerStyle, textAlign: TextAlign.center),
    //                           ],
    //                         ),
    //                         IconButton(icon: Icon(Icons.refresh, color: Colors.white,), onPressed: (){print('Refresh');})
    //                       ],
    //                     ),
    //
    //                   ],
    //                 ),
    //               ), SizedBox(width: 100.0,)
    //             ],
    //           )
    //         ],
    //       ),
    //     )
    // );
  }
}
