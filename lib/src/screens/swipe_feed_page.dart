import 'package:flutter/material.dart';
import 'package:kashware/src/utils/common_styles.dart';
import 'package:kashware/src/utils/widgets/swipe_card/cards_section_alignment.dart';
import 'package:kashware/src/utils/widgets/swipe_card/cards_section_draggable.dart';


class SwipeFeedPage extends StatefulWidget {
  @override
  _SwipeFeedPageState createState() => _SwipeFeedPageState();
}

class _SwipeFeedPageState extends State<SwipeFeedPage> {
  bool showAlignmentCards = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CardsSectionDraggable(),
          InkWell(
            child: Center(
              child: Container(
                width: 100.0,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5.0,top: 5.0, right: 5.0, bottom: 5.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Image.asset('assets/images/share.png'),
                    Icon(Icons.share, color: Colors.white,size: 14.0,),
                    Text('Share',style: TextStyle(color: Colors.white,fontSize: 18.0),)
                  ],
                ),
              ),
            ),
            onTap: (){},
          ),
          SizedBox(height: 10.0,)
          // buttonsRow()
        ],
      ),
    );
  }
}
