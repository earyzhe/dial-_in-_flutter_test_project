
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../strings.dart';
import '../custom_widgets.dart';
import 'sign_up.dart';
import '../appColors.dart';


class OverviewPage extends StatelessWidget{
//
/// UI Build
///
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       
      /// 
      /// App bar 
      ///
      appBar: AppBar( backgroundColor: Colors.orange.withOpacity(0.8),title: Text(StringLabels.overview, style: TextStyle( fontWeight: FontWeight.w700),), automaticallyImplyLeading: false,
      leading: RawMaterialButton( onPressed: () => Navigator.pop(context), 
            child: Container(padding: EdgeInsets.all(20.0) ,decoration: BoxDecoration(image: DecorationImage( image: AssetImage('assets/images/logout.png'), fit: BoxFit.cover)),),), ),
      
      ///Other buttons
      //  actions: <Widget>[
      //     FlatButton(onPressed:() { Navigator.pop(context);}, child:  Text(StringLabels.logOut, style: TextStyle(color: Colors.black, fontSize: 15.0),),)
      // ],
     
      
      body:
      new Stack(
        children: <Widget>[

      ///
      ///Background
      ///
      Pagebackground(AssetImage('assets/images/cherries.jpg')),
    
      /// 
      /// Main body
      /// 
      ListView( children: <Widget>[
        Card( color: Colors.transparent,
          child: Column( children: <Widget>[

              ///
              /// User profile card
              /// 
              UserCard(),

              Card(child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                
                Flex(direction: Axis.horizontal ),
                SegmentControlButton('Social'),
                Flex(direction: Axis.horizontal ),
                SegmentControlButton('Social'),
                Flex(direction: Axis.horizontal ),
                SegmentControlButton('Social'),
                Flex(direction: Axis.horizontal ),
                SegmentControlButton('Social'),
                Flex(direction: Axis.horizontal )


                // Container(width: 20.0 ,height: 20.0 ,child:RaisedButton(child:  Column(children: <Widget>[Image.asset('assets/images/user.png'),Text('Social')],),),),
                // Container(width: 20.0 ,height: 20.0 ,child:RaisedButton(child:  Column(children: <Widget>[Image.asset('assets/images/whiteRecipe200X200.png'),Text('Recipe')],),),),
                // Container(width: 20.0 ,height: 20.0 ,child:RaisedButton(child:  Column(children: <Widget>[Image.asset('assets/images/coffee-beanSmaller512x512.png'),Text('Coffee')],),),),
                // Container(width: 20.0 ,height: 20.0 ,child:RaisedButton(child:  Column(children: <Widget>[Image.asset('assets/images/drop.png'),Text('Water')],),),)
              ],),),
              // CupertinoSegmentedControl( onValueChanged: (dynamic) => print("in here"),
              // children: const <int, Widget>{

              //     0: SegmentControlButton(StringLabels.recipe,Image.asset('assets/images/drop.png'))
              //     // 0: Text('Social'),
              //     // 1: Text('Recipe'),
              //     // 2: Text('Coffee'),
              //     // 3: Text('Water'),     
                
              //   }),
              ProfileCard()
 
          ],          
          ),
        )
      ]
      ),
       ]
     ),

      //  bottomNavigationBar: Material(color:Colors.black , child: BottomNavigationBar(  fixedColor: Colors.black,  iconSize: 10.0,  type: BottomNavigationBarType.shifting,
      //    items: <BottomNavigationBarItem>[
          //  BottomNavigationBarItem( backgroundColor: Colors.transparent, title: Text('Add'), icon: Image.asset('assets/images/addProfileButtonWithOrangeTint.png')),
          //  BottomNavigationBarItem( backgroundColor: Colors.transparent, title: Text('Add'), icon: Image.asset('assets/images/addProfileButtonWithOrangeTint.png')),
          //  BottomNavigationBarItem( backgroundColor: Colors.transparent, title: Text('Add'), icon: Image.asset('assets/images/addProfileButtonWithOrangeTint.png'))       ]
      //  ))
     floatingActionButton: FloatingActionButton(onPressed: ()=> {}, child: Icon(Icons.add),),
      );
    }
}


///
/// Page components
///

/// Bar button



///Segmented control button
class SegmentControlButton extends StatelessWidget{

  final String text;
  // final Image image;

 SegmentControlButton(this.text);

@override
  Widget build(BuildContext context) {
    return

    Container(width: 50.0 ,height: 50.0 ,child:
    RawMaterialButton(onPressed: () =>{}, child:  
    Column(children: <Widget>[Text(text, style: TextStyle( fontSize: 10.0 ))],),),);


              // Card( 
              //   child: Column( 
              //     children: <Widget>[
              //             Container(
              //                   margin: const EdgeInsets.all(5.0),
              //                   child: image,
              //                       height: 20.0, width: 20.0
              //                 ),
              //             Container(margin: EdgeInsets.all(5.0), child:Text(text) ),         
              //     ]
              //   )
              // );
  }
  }




///Profile card
class ProfileCard extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Card(
      child: Row( 
        children: <Widget>[
          
          ///
          /// Profile picture
          /// 
          Container( child: CircularPicture(Image.asset('assets/images/user.png'), 60.0)),

          Expanded(child:
          Row( children: <Widget>[

            ///
            /// Main name and secondnary details
            /// 
            Expanded(child:Container( padding: EdgeInsets.all(0.0), child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
              Container(margin: EdgeInsets.all(10.0),child: Text('Main')),
              Container(margin: EdgeInsets.all(10.0), child: Text('Second'),)
              ]
              ) 
            )),
            ///
            /// Third and fourth details
            ///
            Expanded(child:Container( padding: EdgeInsets.all(0.0), child:
            Column(crossAxisAlignment: CrossAxisAlignment.end,children: <Widget>[
              Container(margin: EdgeInsets.all(10.0),child: Text('Third')),
              Container(margin: EdgeInsets.all(10.0), child: Text('Fourth'),)
              ]
              ) 
            ))
        ]
      )
      )
        ]
      )
    );
}
}



class UserCard extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Card(
      child: Row( 
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

        ///
        /// User Image
        /// 
        Container(child: Center(child:CircularPicture(Image.asset('assets/images/user.png'), 100.0))),
        
        Column( children: <Widget>[
          ///
          /// User name text
          /// 
          Container( margin: EdgeInsets.all(20.0), child:Text(StringLabels.userName,  style: TextStyle( fontSize: 20.0),)),

          Container( child: Row( children: <Widget>[

            ///
            /// Brew count
            /// 
            Container( padding: EdgeInsets.all(5.0), child:
            /// Title
            Column(children: <Widget>[Text(StringLabels.brewCount), 
            /// Value
            CountLabel('B')])
            ),

            ///
            ///Bean stash
            ///
            Container( padding: EdgeInsets.all(5.0), child:
            ///Title
            Column(children: <Widget>[Text(StringLabels.beanStash),
            /// Value
            CountLabel('C')])
            )
          ],),)
        ],)
        ]
      )
    );
  }
}



class CountLabel extends StatelessWidget{

  final String _text;

  CountLabel(this._text);

  @override
  Widget build(BuildContext context){
    
  return Container( margin: EdgeInsets.all(5.0),
   child:Text(_text, style: TextStyle( color: AppColors.getColor(ColorType.primarySwatch), fontSize: 20.0),));
  }
}