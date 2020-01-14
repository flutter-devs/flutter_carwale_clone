import 'package:aeo_newcarwale/constants/Constants.dart';
import 'package:aeo_newcarwale/model/car_comaprisons.dart';
import 'package:aeo_newcarwale/model/just_launched.dart';
import 'package:aeo_newcarwale/model/news.dart';
import 'package:aeo_newcarwale/model/photos.dart';
import 'package:aeo_newcarwale/model/popularscars.dart';
import 'package:aeo_newcarwale/model/upcoming_launches.dart';
import 'package:aeo_newcarwale/model/videos.dart';
import 'package:aeo_newcarwale/widget/custom_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

enum VisibilityFlag{
  visible,
  invisible,
}

class AeoCarBackUp extends StatefulWidget {

  @override
  _AeoCarBackUpState createState() => _AeoCarBackUpState();
}

class _AeoCarBackUpState extends State<AeoCarBackUp> {
  double _width;
  double _height;

  VisibilityFlag visibility=VisibilityFlag.visible;

  ScrollController scrollController=ScrollController();

  List<PopularCars>popularsCars;
  List<CarComparisons>carComparisons;
  List<UpcomingLaunches>upcomingLaunches;
  List<JustLaunched>justLaunched;
  List<News>news;
  List<Photos>photo;
  List<Videos>videos;
  double offset = 0.0;

  @override
  void initState() {
    popularsCars=Constants.getPopularsCars();
    carComparisons=Constants.getCarsComparisons();
    upcomingLaunches=Constants.getUpcomingLaunche();
    justLaunched=Constants.getJustLaunched();
    news=Constants.getNews();
    photo=Constants.getPhotos();
    videos=Constants.getVideos();


    setState(() {
      if(_changeAppBar){
        visibility=VisibilityFlag.visible;
      }else{
        visibility=VisibilityFlag.invisible;
      }
    });
    super.initState();
  }

  bool get _changeAppBar{
    return scrollController.hasClients && scrollController.offset >(200-kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:Colors.grey[100],
      /*appBar: AppBar(
        backgroundColor:Colors.white,
        leading:Icon(Icons.menu,color: Colors.black,),
        title: Text('New Cars',style:TextStyle(color: Colors.black),),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right:15.0),
            child:Icon(Icons.location_on,color: Colors.black,),
          ),
        ],
      ),*/

      body: CustomScrollView(

        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: _height/2.4,
            floating: true,
            pinned: false,
          //  forceElevated: innerBoxIsScrolled,
            backgroundColor:Colors.white,
            leading:
            InkWell(
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            title: Text('New Cars',style:TextStyle(color: Colors.white),),
            actions: <Widget>[
              InkWell(
                onTap: (){
                  //  Navigator.of(context).pushNamed(notification);
                },
                child: Container(
                    margin: EdgeInsets.only(right: 15),
                    child:Icon(Icons.location_on,color: Colors.white,)
                ),
              )
            ],


            flexibleSpace: FlexibleSpaceBar(

              title: Text('Filled'),
              background:Image.asset('assets/images/background-img.jpg',height: _height/2.5,fit: BoxFit.fill,),


            ),




            /*flexibleSpace: LayoutBuilder(
              builder: (BuildContext context,BoxConstraints constraints){
                offset = constraints.biggest.height;
                return FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  centerTitle: true,
                  title:Visibility(
                    visible: offset < 160,
                    child:Padding(
                      padding: EdgeInsets.only(left: 20.0,right:15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.black,
                                ),
                              ),
                              //Text(offset.toString())
                              SizedBox(
                                width: 30.0,
                              ),
                              Text('New Cars',style: TextStyle(color: Colors.black),),
                            ],
                          ),

                          Container(
                            child: Icon(
                              Icons.location_on,
                              color: Colors.black,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  // title:
                  *//*Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom:0.0, left: 50, right:50,top:220.0),
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.only(bottom:0.0, left: 20, right: 20,top:0.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(3.0)
                                    ),
                                    width: _width,
                                    height: _height/18.0,
                                    alignment: Alignment.topCenter,
                                    child: TextFormField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10.0),
                                          hintText:"What are you looking for?",hintStyle: TextStyle(fontWeight: FontWeight.w300,fontSize:16.0),
                                          suffixIcon:Icon(Icons.search, size:20,color: Colors.grey[600],),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide.none
                                          )
                                      ),
                                    ),
                                  ),),

                                Flexible(child: Container(
                                  padding: EdgeInsets.only(bottom:0.0, left:0.0, right: 20,),
                                  alignment: Alignment.topRight,
                                  child:Text('Advanced Search',style: TextStyle(color: Colors.white,fontSize: 13.0,decoration: TextDecoration.underline),),
                                ),),

                              ],
                            ),
                          ),
                        ],
                      ),*//*
                  background:Image.asset('assets/images/background-img.jpg',height: _height/2.5,fit: BoxFit.fill,),
                );
              },
            ),*/

            /*bottom: PreferredSize(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom:20.0, left: 20, right: 20,),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.0)
                      ),
                      width: _width,
                      height: _height/18.0,
                      alignment: Alignment.topCenter,
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            hintText:"What are you looking?",hintStyle: TextStyle(fontWeight: FontWeight.w300,fontSize:16.0),
                            suffixIcon:Icon(Icons.search, size:20,color: Colors.grey[600],),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            )
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(bottom:15.0, left:0.0, right: 20,),
                      alignment: Alignment.topRight,
                      child:Text('Advanced Search',style: TextStyle(color: Colors.white,fontSize: 13.0,decoration: TextDecoration.underline),),
                    ),

                  ],
                ),
                preferredSize: Size(_width,_height/21)
            ),*/
          ),
        ],


       /* body:SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top:40.0),
                //height: _height/2.5,
                width: _width,
                child: Text('All-New MG ZS EV',style: TextStyle(fontSize: 18.0,color: Colors.black87,fontWeight: FontWeight.w600),),
              ),

              Container(
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.only(left:15.0,right:15.0,top:0.0),
                height: _height/2.3,
                width: _width,
                child:Card(
                    elevation:2.0,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(left:15.0,right:15.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex:6,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 0.0),
                                  // color: Colors.indigo,
                                  //height: _height/3,
                                  width: _width,
                                  child: Image.asset('assets/images/MarutiSCross.jpg'),
                                ),

                                Container(
                                  padding: EdgeInsets.only(top: 10.0),
                                  alignment:Alignment.topRight,
                                  child:Text('Ad',style: TextStyle(color: Colors.grey[500],fontSize: 10.0),),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex:7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[

                                Container(
                                  padding: EdgeInsets.only(top:0.0),
                                  alignment:Alignment.topRight,
                                  child:Text('*T&C apply',style: TextStyle(color: Colors.grey[500],fontSize: 10.0),),
                                ),

                                Container(
                                  padding: EdgeInsets.only(top:0.0),
                                  //height: _height/5.5,
                                  width: _width,
                                  //  color: Colors.black,
                                  alignment: Alignment.center,
                                  child: Text('India First Pure Electric Internet Car.',style: TextStyle(color: Colors.black87,
                                      fontSize: 16.0,fontWeight: FontWeight.w600,letterSpacing:0.5),),
                                ),

                                Container(
                                  // padding: EdgeInsets.only(top),
                                  //height: _height/5.5,
                                  width: _width,
                                  //  color: Colors.black,
                                  alignment: Alignment.center,
                                  child: Text('#ChangeWhatYouCan',style: TextStyle(fontSize: 15.0,letterSpacing: 0.5),),
                                ),

                                Container(
                                    padding: EdgeInsets.only(bottom:5.0),
                                    //  height: _height/10.0,
                                    alignment: Alignment.center,
                                    //  padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 24.0),
                                    child:RaisedButton(
                                        padding: EdgeInsets.symmetric(vertical:12.0,horizontal:5.0),
                                        color: Colors.redAccent,
                                        child:Text('KNOW MORE',style: TextStyle(color: Colors.white,letterSpacing:1.0,
                                            fontSize:16.0,fontWeight: FontWeight.w600)) ,
                                        onPressed: (){}
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('BROWSE CARS BY',style: TextStyle(fontSize: 18.0,color: Colors.black87,
                    letterSpacing:0.5,fontWeight: FontWeight.w600),),
              ),

              Container(
                height: 1.5,
                color: Colors.blue[300],
                margin:EdgeInsets.only(left:150.0,right:150.0,top:10.0),
              ),


              Stack(
                children: <Widget>[
                  ClipPath(
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0),
                      height: _height/2.0,
                      width: _width,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        *//*  gradient: LinearGradient(
                          colors:[Color(0xff2159db),Color(0xff753fe4)],
                          begin: Alignment.centerRight,
                          end: new Alignment(-1.0,-1.0),
                        ),*//*
                      ),
                    ),
                    clipper:CustomShapeClipper3(),
                  ),

                  Container(
                    margin: EdgeInsets.only(top:40.0),
                    //height:_height/5,
                    width: _width,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,right: 15.0,top:0.0),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top:40.0,left:0.0,right:0.0),
                                    height: _height/5,
                                    width:_width/2.2,
                                    child:Card(
                                      color: Colors.white,
                                      child:Column(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top:50.0),
                                            child: Text('Brand',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54),),
                                          ),

                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Text('See all cars by brand',style: TextStyle(fontSize:12.0,fontWeight: FontWeight.w400,color: Colors.black54),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(

                                    alignment: Alignment.topCenter,
                                    margin:EdgeInsets.only(left:40.0,right: 0.0),
                                    height:_height/9,
                                    width: _width/4.5,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0, color: Colors.grey[400]),
                                      borderRadius: BorderRadius.circular(50.0,),
//                                border: Border.all(width: 1.0, color: Colors.green),
                                      color: Colors.white,
                                    ),
                                    child:Container(
                                      alignment: Alignment.center,
                                      width: _width/6,
                                      //padding:EdgeInsets.all(5.0),
                                      child:Center(
                                        child: Icon(Icons.star_half,size:40.0,color: Colors.red,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Stack(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top:40.0,left:0.0,right:0.0),
                                    height: _height/5,
                                    width:_width/2.2,
                                    child:Card(
                                      color: Colors.white,
                                      child:Column(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top:50.0),
                                            child: Text('EMI/Budget',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54),),
                                          ),

                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Text('Can that fit your budget',style: TextStyle(fontSize:12.0,fontWeight: FontWeight.w400,color: Colors.black54),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    margin:EdgeInsets.only(left:40.0,right: 0.0),
                                    height:_height/9,
                                    width: _width/4.5,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0, color: Colors.grey[400]),
                                      borderRadius: BorderRadius.circular(50.0,),
//                                border: Border.all(width: 1.0, color: Colors.green),
                                      color: Colors.white,
                                    ),
                                    child:Container(
                                      alignment: Alignment.center,
                                      width: _width/6,
                                      //padding:EdgeInsets.all(5.0),
                                      child:Center(
                                        child: Icon(Icons.star_half,size:40.0,color: Colors.red,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top:40.0,left:0.0,right:0.0),
                                    height: _height/5,
                                    width:_width/2.2,
                                    child:Card(
                                      color: Colors.white,
                                      child:Column(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top:50.0),
                                            child: Text('Body Type',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54),),
                                          ),

                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Text('View by body style',style: TextStyle(fontSize:12.0,fontWeight: FontWeight.w400,color: Colors.black54),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    margin:EdgeInsets.only(left:40.0,right: 0.0),
                                    height:_height/9,
                                    width: _width/4.5,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0, color: Colors.grey[400]),
                                      borderRadius: BorderRadius.circular(50.0,),
//                                border: Border.all(width: 1.0, color: Colors.green),
                                      color: Colors.white,
                                    ),
                                    child:Container(
                                      alignment: Alignment.center,
                                      width: _width/6,
                                      //padding:EdgeInsets.all(5.0),
                                      child:Center(
                                        child: Icon(Icons.star_half,size:40.0,color: Colors.red,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Stack(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top:40.0,left:0.0,right:0.0),
                                    height: _height/5,
                                    width:_width/2.2,
                                    child:Card(
                                      color: Colors.white,
                                      child:Column(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top:50.0),
                                            child: Text('Fuel type',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54),),
                                          ),

                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Text('View by body style',style: TextStyle(fontSize:12.0,fontWeight: FontWeight.w400,color: Colors.black54),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    margin:EdgeInsets.only(left:40.0,right: 0.0),
                                    height:_height/9,
                                    width: _width/4.5,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0, color: Colors.grey[400]),
                                      borderRadius: BorderRadius.circular(50.0,),
//                                border: Border.all(width: 1.0, color: Colors.green),
                                      color: Colors.white,
                                    ),
                                    child:Container(
                                      alignment: Alignment.center,
                                      width: _width/6,
                                      //padding:EdgeInsets.all(5.0),
                                      child:Center(
                                        child: Icon(Icons.star_half,size:40.0,color: Colors.red,),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('POPULAR CARS',style: TextStyle(fontSize: 18.0,color: Colors.black87,fontWeight: FontWeight.w600),),
              ),

              Container(
                height: 1.5,
                color: Colors.blue[300],
                margin:EdgeInsets.only(left:150.0,right:150.0,top:5.0),
              ),

              Container(
                margin: EdgeInsets.only(top:20.0),
                width: _width,
                height: _height /2.5,
                child: ListView.builder(
                    itemCount: popularsCars.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildPopularCars(popularsCars[index]);
                    }),
              ),

              Container(
                margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
                width: _width,
                height: _height /4.5,
                child:Card(
                  color: Colors.blueGrey[900],
                  elevation: 3.0,
                  //  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                  child:Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                          child: Opacity(
                            opacity: 0.30,
                            child: ClipPath(
                              clipper: CustomShapeClipper(),
                              child: Container(
                                height: _height/6,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.blue[900], Colors.lightBlueAccent[100]],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                          child:  Column(
                            children: <Widget>[
                              Opacity(
                                opacity: 0.5,
                                child: ClipPath(
                                  clipper: CustomShapeClipper2(),
                                  child: Container(
                                    //height: _height / 3.5,
                                    height:_height/6,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.blue[900], Colors.lightBlueAccent[100]],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Column(
                          children: <Widget>[

                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  top:20.0, left: 20.0, right:90.0),
                              child: Text(
                                'INTORDUCING',
                                style: TextStyle(
                                    color: Colors.white,fontSize:11.0,
                                    fontWeight: FontWeight.w300,letterSpacing: 1.0),
                              ),
                            ),

                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  top:5.0, left: 20.0, right:90.0),
                              child: Text(
                                'Car Wale Advantage',
                                style: TextStyle(
                                    color: Colors.white,fontSize:18.0,
                                    fontWeight: FontWeight.w700,letterSpacing: 1.0),
                                maxLines: 2,
                              ),
                            ),

                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  top:5.0, left: 20.0, right:0.0),
                              child: Text(
                                'A world of Benefits for Every Car Owner',
                                style: TextStyle(
                                    color: Colors.white,fontSize:11.0,
                                    fontWeight: FontWeight.w300,letterSpacing:0.1),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(right:150.0,top:10.0,left:0.0),
                              alignment: Alignment.bottomLeft,
                              height:_height/21.0,
                              width: _width/2.5,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
//                                border: Border.all(width: 1.0, color: Colors.green),
                                //  color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                              child:Container(
                                alignment: Alignment.center,
                                width: _width/2.5,
                                padding:EdgeInsets.all(5.0),
                                child: Center(
                                  child: Text(
                                    'Explore offers',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize:13.0),
                                  ),
                                ),
                              ),
                            ),


                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  top:10.0, left: 20.0, right:0.0),
                              child: Text(
                                'Now available cross india!',
                                style: TextStyle(
                                    color: Colors.white,fontSize:11.0,
                                    fontWeight: FontWeight.w300,letterSpacing:0.1),
                              ),
                            ),


                          ],
                        ),
                      ]
                  ),
                ),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('POPULAR CARS COMPARISONS',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),),
              ),

              Container(
                height: 1,
                color: Colors.blue[300],
                margin:EdgeInsets.only(left:150.0,right:150.0,top:10.0),
              ),

              Container(
                margin: EdgeInsets.only(top:20.0),
                width: _width,
                height: _height /4,
                child: ListView.builder(
                    itemCount:carComparisons.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildCarComparisons(carComparisons[index]);
                    }),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('View All',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600,color: Colors.blue[400]),),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('UPCOMING LAUNCHES',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.black87),),
              ),

              Container(
                height: 1,
                color: Colors.blue[300],
                margin:EdgeInsets.only(left:155.0,right:155.0,top:10.0),
              ),

              Container(
                margin: EdgeInsets.only(top:25.0),
                width: _width,
                height: _height /2.5,
                child: ListView.builder(
                    itemCount:upcomingLaunches.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildUpcomingLaunches(upcomingLaunches[index]);
                    }),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('View All',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w600,color: Colors.blue[300]),),
              ),


              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('JUST LAUNCHED',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.black87,letterSpacing:0.5),),
              ),

              Container(
                height: 1,
                color: Colors.blue[300],
                margin:EdgeInsets.only(left:155.0,right:155.0,top:10.0),
              ),

              Container(
                margin: EdgeInsets.only(top:25),
                width: _width,
                height: _height /2.5,
                child: ListView.builder(
                    itemCount:justLaunched.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildJustLaunced(justLaunched[index]);
                    }),
              ),


              Container(
                margin: EdgeInsets.only(top:40.0),
                height: _height/3,
                width: _width,
                color: Colors.red,
                child: Stack(
                  children: <Widget>[
                    Container(
                      child:Image.asset('assets/images/check_onroad.webp',fit: BoxFit.fill,width: _width,height: _height,),
                    ),

                    Padding(
                      padding:EdgeInsets.only(top: 30.0,left: 20.0,right:20.0,bottom: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Text('CHECK ON-ROAD PRICE',style: TextStyle(letterSpacing: 0.5,fontSize:18.0,color: Colors.white,fontWeight: FontWeight.w600),),
                          ),

                          Container(
                            margin: EdgeInsets.only(top:0.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2)
                            ),
                            width: _width,
                            height: _height/19,
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText:"Type to select car name,eg.Audi A4",hintStyle: TextStyle(fontWeight: FontWeight.w500,
                                  fontSize: 15.0,color: Colors.black45),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none
                                  )
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(top:0.0),
                            width: _width,
                            height: _height/17,
                            child: RaisedButton(
                              color:Colors.redAccent,
                              child:Text('CHECK NOW',style: TextStyle(letterSpacing: 0.5,color: Colors.white,fontSize:17.0,fontWeight: FontWeight.w600),),
                              onPressed: (){
                              },
                            ),
                          ),

                          Container(
                            alignment: Alignment.center,
                            child: Text('Contact details are not needed to get the price',style: TextStyle(fontSize:14.0,color: Colors.white70,fontWeight: FontWeight.w100),),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('NEWS',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),),
              ),

              Container(
                height: 1.0,
                color: Colors.blue[300],
                margin:EdgeInsets.only(left:155.0,right:155.0,top:10.0),
              ),


              Container(
                margin: EdgeInsets.only(top:25.0),
                width: _width,
                height: _height /2.5,
                child: ListView.builder(
                    itemCount:news.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildNews(news[index]);
                    }),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('View All',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600,color: Colors.blue[400]),),
              ),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('PHOTOS',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.black87),),
              ),

              Container(
                height: 1,
                color: Colors.blue[300],
                margin:EdgeInsets.only(left:155.0,right:155.0,top:10.0),
              ),


              Container(
                margin: EdgeInsets.only(top:30.0),
                width: _width,
                height: _height /3.5,
                child: ListView.builder(
                    itemCount:photo.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildPhotos(photo[index]);
                    }),
              ),


              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:30.0),
                //height: _height/2.5,
                width: _width,
                child: Text('VIDEOS',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),),
              ),

              Container(
                height: 1.5,
                color: Colors.blue[300],
                margin:EdgeInsets.only(left:150.0,right:150.0,top:10.0),
              ),

              Container(
                margin: EdgeInsets.only(top:30.0),
                width: _width,
                height: _height /2.5,
                child: ListView.builder(
                    itemCount:videos.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildVideos(videos[index]);
                    }),
              ),


            ],
          ),
        ),*/
      ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car,
              color: Colors.redAccent,
            ),
            title: Text(
              "New",
              style: TextStyle(color: Colors.redAccent,),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car,
              color: Colors.black26,
            ),
            title: Text(
              "Used",
              style: TextStyle(color: Colors.black26,),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compare,
              color: Colors.black26,
            ),
            title: Text(
              "Compare",
              style: TextStyle(color: Colors.black26),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.insert_drive_file,
              color: Colors.black26,
            ),
            title: Text(
              "News",
              style: TextStyle(color: Colors.black26),
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
              color: Colors.black26,
            ),

            title: Text(
              "price",
              style: TextStyle(color: Colors.black26),
            ),
          ),

        ],
      ),

    );
  }
  Widget _buildPopularCars(PopularCars item) {
    return Container(
      width:_width/1.3,
      padding: EdgeInsets.only( left:15.0,right: 5.0),
      child: Card(
        elevation:2.0,
        child: Column(
          children: <Widget>[
            Expanded(
              flex:8,
              child: Container(
                // padding: EdgeInsets.only(top: 10.0),
                //color: Colors.blue ,
                height: _height/4,
                width: _width,
                child: Image.asset(item.img,height:_height/0,width: _width,),
              ),
            ),

            Expanded(
              flex:5,
              child:Padding(
                padding:EdgeInsets.only(top:0.0,left: 20.0,bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      padding:EdgeInsets.only(left: 0.0,top:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.title,style: TextStyle(fontSize:16.0,color:Colors.black54),),
                    ),


                    Row(
                      children: <Widget>[
                        Container(
                          padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                          alignment: Alignment.topLeft,
                          child: Text(item.price,style:TextStyle(fontSize:19.0,color:Colors.black,fontWeight: FontWeight.w700),),
                        ),
                        Container(
                          padding:EdgeInsets.only(left:5.0,bottom:0.0,top:5.0),
                          alignment: Alignment.topLeft,
                          child: Text('onwards',style:TextStyle(fontSize:12.0,color:Colors.black45,fontWeight: FontWeight.w500,letterSpacing:0.3),),
                        ),
                      ],
                    ),

                    Container(
                      padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.showroom_price,style:TextStyle(fontSize:12.0,color:Colors.grey),),
                    ),

                    Container(
                      padding:EdgeInsets.only(left:0.0,bottom:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.city,style:TextStyle(fontSize:12.0,color:Colors.blue),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarComparisons(CarComparisons item) {
    return Container(
      width:_width/1.3,
      padding: EdgeInsets.only( left:15.0,right:0.0),
      child: Card(
        elevation:2.0,
        child: Column(
          children: <Widget>[
            Expanded(
              flex:4,
              child: Container(
                height:_height/20,
                width: _width,
                child: Image.asset('assets/images/car_comparison.jpg',fit: BoxFit.fill,),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex:4,
                  child: Container(
                    height: _height/10.0,
                    padding:EdgeInsets.only(left:10.0,bottom:0.0,top:20.0),
                    alignment: Alignment.topCenter,
                    child: Text(item.title,style:TextStyle(fontSize:17.0,color:Colors.black54,fontWeight: FontWeight.w400),),
                  ),
                ),

                Expanded(
                  flex:4,
                  child: Container(
                    height: _height/10.0,
                    padding:EdgeInsets.only(left:20.0,bottom:0.0,top:20.0,right: 10.0),
                    alignment: Alignment.topCenter,
                    child: Text(item.subTitle,style:TextStyle(fontSize:17.0,color:Colors.black54,fontWeight: FontWeight.w400,)
                      ,textAlign: TextAlign.center,maxLines:2,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpcomingLaunches(UpcomingLaunches item) {

    return Container(
      width:_width/1.3,
      padding: EdgeInsets.only( left:15.0,right: 5.0),
      child: Card(
        elevation:2.0,
        child: Column(
          children: <Widget>[
            Expanded(
              flex:8,
              child: Container(
                // padding: EdgeInsets.only(top: 10.0),
                //color: Colors.blue ,
                height: _height/4,
                width: _width,
                child: Image.asset(item.img,height:_height/0,width: _width,),
              ),
            ),

            Expanded(
              flex:5,
              child:Padding(
                padding:EdgeInsets.only(top:0.0,left: 20.0,bottom:15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding:EdgeInsets.only(left: 0.0,top:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.title,style: TextStyle(fontSize:16,color:Colors.black54,fontWeight: FontWeight.w400),),
                    ),

                    Container(
                      padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.date,style:TextStyle(fontSize:15.5,color:Colors.black54,fontWeight: FontWeight.w600),),
                    ),

                    Container(
                      padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.price,style:TextStyle(fontSize:18.0,color:Colors.black87,fontWeight: FontWeight.w600),),
                    ),

                    Container(
                      padding:EdgeInsets.only(left:0.0,bottom:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.estimated_price,style:TextStyle(fontSize:12.0,color:Colors.grey[500]),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJustLaunced(JustLaunched item) {
    return Container(
      width:_width/1.3,
      padding: EdgeInsets.only( left:15.0,right: 5.0),
      child: Card(
        elevation:2.0,
        child: Column(
          children: <Widget>[
            Expanded(
              flex:8,
              child: Container(
                // padding: EdgeInsets.only(top: 10.0),
                //color: Colors.blue ,
                height: _height/4,
                width: _width,
                child: Image.asset(item.img,height:_height/0,width: _width,),
              ),
            ),

            Expanded(
              flex:5,
              child:Padding(
                padding:EdgeInsets.only(top:0.0,left: 20.0,bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding:EdgeInsets.only(left: 0.0,top:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.title,style: TextStyle(fontSize:16.0,color:Colors.black54),),
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                          alignment: Alignment.topLeft,
                          child: Text(item.price,style:TextStyle(fontSize:19.0,color:Colors.black,fontWeight: FontWeight.w700),),
                        ),
                        Container(
                          padding:EdgeInsets.only(left:5.0,bottom:0.0,top:5.0),
                          alignment: Alignment.topLeft,
                          child: Text('onwards',style:TextStyle(fontSize:12.0,color:Colors.black45,fontWeight: FontWeight.w500,letterSpacing:0.3),),
                        ),
                      ],
                    ),

                    Container(
                      padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.showroom_price,style:TextStyle(fontSize:12.0,color:Colors.grey),),
                    ),

                    Container(
                      padding:EdgeInsets.only(left:0.0,bottom:0.0),
                      alignment: Alignment.topLeft,
                      child: Text(item.city,style:TextStyle(fontSize:12.0,color:Colors.blue),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNews(News item) {
    return Container(
      width:_width/1.3,
      padding: EdgeInsets.only( left:15.0,right: 5.0),
      child: Card(
        elevation:2.0,
        child: Stack(
          children: <Widget>[

            Column(
              children: <Widget>[
                Expanded(
                  flex:6,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.only(top: 10.0),
                        //color: Colors.blue ,
                        height: _height/4,
                        width: _width,
                        child: Image.asset(item.img,height:_height/0,width: _width,fit: BoxFit.fill ,),
                      ),

                      /* Container(
                        width:_width/5.0,
                        height: _height/10.0,
                        margin: EdgeInsets.only(top:100.0),
                        //color: Colors.cyan,
                        alignment: Alignment.bottomLeft,
                        decoration:BoxDecoration(color: Colors.cyan),
                        child: Text('Hello'),
                      ),*/
                    ],
                  ),
                ),

                Expanded(
                  flex:5,
                  child:Padding(
                    padding:EdgeInsets.only(top:5.0,left: 10.0,right:20.0,bottom:10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding:EdgeInsets.only(left: 0.0,top:0.0),
                          alignment: Alignment.topLeft,
                          child: Text(item.title,style: TextStyle(fontSize:16.0,color:Colors.black87,fontWeight: FontWeight.w400,letterSpacing:0.5),maxLines:2,overflow: TextOverflow.ellipsis,),
                        ),

                        Container(
                          padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                          alignment: Alignment.topLeft,
                          child: Text(item.day,style:TextStyle(fontSize:14.0,color:Colors.grey,fontWeight: FontWeight.w300),),
                        ),


                        Row(
                          children: <Widget>[

                            Container(
                              padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                              alignment: Alignment.topLeft,
                              child: Text('by',style:TextStyle(fontSize:12.0,color:Colors.grey,fontWeight: FontWeight.w300),),
                            ),


                            Container(
                              padding:EdgeInsets.only(left:2.0,bottom:0.0,top:0.0),
                              alignment: Alignment.topLeft,
                              child: Text(item.newsByName,style:TextStyle(fontSize:14.0,color:Colors.black87),),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotos(Photos item) {
    return Container(
      width:_width/1.3,
      padding: EdgeInsets.only( left:15.0,right: 5.0),
      child: Card(
        elevation:2.0,
        child:  Column(
          children: <Widget>[
            Expanded(
              flex:6,
              child: Container(
                // padding: EdgeInsets.only(top: 10.0),
                //color: Colors.blue ,
                height: _height/4,
                width: _width,
                child: Image.asset(item.img,height:_height/0,width: _width,fit: BoxFit.fill ,),
              ),
            ),

            Expanded(
              flex: 2,
              child:Padding(
                padding:EdgeInsets.only(top:5.0,left: 10.0,right:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding:EdgeInsets.only(left: 0.0,top:0.0),
                      alignment: Alignment.centerLeft,
                      child: Text(item.carName,style: TextStyle(fontSize:15.0,color:Colors.grey),),
                    ),

                    Row(
                      children: <Widget>[
                        Icon(Icons.image,size:15.0,color: Colors.grey,),
                        Container(
                          padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                          alignment: Alignment.centerLeft,
                          child: Text(item.totalPhoto,style:TextStyle(fontSize:14.0,color:Colors.grey[400],fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );

  }

  Widget _buildVideos(Videos item) {
    return Container(
      width:_width/1.3,
      padding: EdgeInsets.only( left:15.0,right: 0.0),
      child: Card(
        elevation:2.0,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  flex:6,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.only(top: 10.0),
                        //color: Colors.blue ,
                        height: _height/4,
                        width: _width,
                        child: Image.asset(item.img,height:_height/0,width: _width,fit: BoxFit.fill ,),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Icon(Icons.play_circle_outline,color: Colors.white,size:30.0,),

                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 4,
                  child:Padding(
                    padding:EdgeInsets.only(top:20.0,left: 15.0,bottom: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          padding:EdgeInsets.only(left: 0.0,top:0.0),
                          alignment: Alignment.topLeft,
                          child: Text(item.title,style: TextStyle(fontSize:17.0,color:Colors.black54),
                            overflow:TextOverflow.ellipsis,maxLines:1,
                          ),
                        ),

                        Container(
                          padding:EdgeInsets.only(left:0.0,bottom:0.0,top:0.0),
                          alignment: Alignment.topLeft,
                          child: Text(item.date,style:TextStyle(fontSize:13.0,color:Colors.black54,fontWeight: FontWeight.w400),),
                        ),

                        Row(
                          children: <Widget>[

                            Container(
                              child:
                              Icon(Icons.remove_red_eye,size: 18.0,color: Colors.black26,),
                            ),

                            Container(
                              padding:EdgeInsets.only(left:10.0,bottom:0.0,top:0.0),
                              alignment: Alignment.topLeft,
                              child: Text(item.view,style:TextStyle(fontSize:14.0,color:Colors.black54),),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 10.0),
                              child:
                              Icon(Icons.thumb_up,size: 18.0,color: Colors.black26,),
                            ),

                            Container(
                              padding:EdgeInsets.only(left:10.0,bottom:0.0,top:0.0),
                              alignment: Alignment.topLeft,
                              child: Text(item.like,style:TextStyle(fontSize:14.0,color:Colors.black54),),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

