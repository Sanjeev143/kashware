import 'package:flutter/material.dart';

class ProfileCardDraggable extends StatelessWidget {
  final int cardNum;
  ProfileCardDraggable(this.cardNum);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/images/mask.png', fit: BoxFit.fitWidth,),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('UK government launches \'ambitious\' air pollution plan ',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700)),
                  Padding(padding: EdgeInsets.only(bottom: 8.0)),
                  Text('A short description.', textAlign: TextAlign.start),
                  Text('In the decade since its 2010 launch for the iPad, offering users a beautiful and satisfyingly elegant digital vehicle for news consumption, Flipboard has continued to evolve the product by adding lots of user-friendly bells and whistles that keep people addicted to the app. The launch of “Magazines,” for example, was a big plus for the service, since it gave people a way to curate and share themed collections of content, and Flipboard CEO Mike', textAlign: TextAlign.start),
                  Padding(padding: EdgeInsets.only(bottom: 8.0)),
                ],
              ))
        ],
      ),
    );
  }
}
