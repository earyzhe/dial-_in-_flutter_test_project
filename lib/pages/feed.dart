import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../custom_widgets.dart';
import 'profile_list.dart';
import '../appColors.dart';


class FeedPage extends StatefulWidget {
  @override
  FeedPageState createState() => new FeedPageState();
}

class FeedPageState extends State<FeedPage> with SingleTickerProviderStateMixin{


TabController controller;
TabViewDataArray _lists;


@override
void initState() { 
  super.initState();
  _lists = TabViewDataArray([

    TabViewData(ProfileList(), Tab(icon: Icon(Icons.public))),
   
    TabViewData(ProfileList(),Tab(icon: Icon(Icons.verified_user)),),

    ]);
  controller = new TabController( vsync: this, length: _lists.ref.length);
}

@override
void dispose(){
controller.dispose();
super.dispose();
}


  ///
  /// UI Build
  ///
  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: Column( children: <Widget>[

      Container(child:
      Material(color: AppColors.getColor(ColorType.toolBar) ,child: 
      TabBar(
        indicatorPadding: EdgeInsets.all(0.0),
        labelPadding: EdgeInsets.all(0.0),
        controller: controller,
        tabs: <Widget>[    
          _lists.ref[0].tab,
          _lists.ref[1].tab,
        ]),
      ),),

      Expanded(child:
        TabBarView(
          controller: controller,
          children: <Widget>[
            _lists.ref[0].screen,
            _lists.ref[1].screen,
          ],
        ),
      ),
    ]
    )
    );
  }
}
    

