import 'dart:async';
import 'package:Eleven11/screens/Model/homeproduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import '../App_Theme/app_colors.dart';
import '../App_Theme/app_style.dart';
import '../Subscription/subscription.dart';
import 'HomePage/home_drawer.dart';
import 'Model/content.dart';
import 'banner.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

bool playAnimation = true;


class _HomepageState extends State<Homepage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;
  int selectedCardIndex = -1;
  String selectedProjectType = 'House'; // Default selection
  List? allAgentsList;
  List? propForRentList;
  List? propForSellList;
  List? allProjectsList;
  List? allProjectsListNew;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF2F6FF),
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        elevation: 0,
        leadingWidth: 5,
        backgroundColor: const Color(0xffF2F6FF),
        title: Image.asset(
        "assets/logo/bg_logo_full.png",
        height: 150,
        width: 150,
        scale: 2,
      ),
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              child:  Lottie.asset(
                'assets/lottie/menu.json',
                repeat: true,
                // Control the animation play/pause
                width: 30,
                height: 1,
              ),
            ),
          )
        ],
      ),
      endDrawer: HomeDrawer(
      allProjectsList: allProjectsList,
      propertyForRentList: propForRentList,
      propertyForSellList: propForSellList,
      allAgentsList: allAgentsList,
    ),
    body : Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //SizedBox(height:,),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Align(
                  alignment: const Alignment(-1, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              letterSpacing: 0.1),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Hi! ',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.1)),
                            TextSpan(
                                text: "Jaspreet",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    color: Colors.blue,
                                    letterSpacing: 0.1)),
                            TextSpan(text: "\n"),
                            TextSpan(
                                text:
                                    'We bring companies and customers together',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 17)),
                            TextSpan(text: "\n"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 5,
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  gradient: new LinearGradient(colors: [
                    const Color(0xffF5134C),
                    const Color(0xffE50A40),
                  ]),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0.0, 6),
                      color: const Color(0xffb22930).withOpacity(0.8),
                      blurRadius: 16,
                    )
                  ],
                ),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                          child: Lottie.asset(
                            'assets/lottie/lottie_home.json',
                            repeat: true,
                            animate: playAnimation,
                            // Control the animation play/pause
                            width: 120,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                          /* decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.white,
                                width: 0.5,
                              ),
                            ),*/
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.1),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Your Growth',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins',
                                          fontSize: 17)),
                                  TextSpan(text: "\n"),
                                  TextSpan(
                                      text: "Our Promise!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins',
                                          fontSize: 17)),
                                ]),
                          ),
                        ),
                      ],
                    ),

                    Container(
                        height: 33,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffDFD5D4),
                              ),
                              child: const Text(
                                "Start free trial",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> subscription(),));
                              },
                              /* color: Color(0xFF3F51B5),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),*/
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> subscription(),));
                              },
                              style: TextButton.styleFrom(
                                //<-- SEE HERE
                                side:
                                const BorderSide(width: 0.8, color: Colors.black),
                              ),
                              child: const Text(
                                'See pricing',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            /* color: Color(0xFF3F51B5),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),*/
                          ],
                        )),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),


              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Services',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.1,
                            fontWeight: FontWeight.w600,
                            fontSize: 16))),
              ),

              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: double.infinity,
                child: IntrinsicHeight(
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: const Color(0xffF2F6FF),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                            height: 70.0,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFb22930),
                              ),
                              //padding: EdgeInsets.only(left: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/lottie/branding.png',
                                    fit: BoxFit.cover,
                                    width: 40,
                                  ),
                                  const Text(
                                    " Branding",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=> schedulepage(),),);
                              },
                            ),
                            //decoration: BoxDecoration(),
                          ),
                          Container(
                            height: 70.0,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            color: const Color(0xffF2F6FF),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFb22930),
                              ),
                              //padding: EdgeInsets.only(left: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/lottie/pr.png',
                                    fit: BoxFit.cover,
                                    width: 40,
                                  ),
                                  const Text(
                                    " 360 PR",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=> productpage(),),);
                              },
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 160.0,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        color: const Color(0xffF2F6FF),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFb22930),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/lottie/goal.png',
                                  fit: BoxFit.cover, width: 80),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Perception Management",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (_)=> onlineschedulepage()),);
                          },
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 19),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Our Campaigns',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.1,
                            fontWeight: FontWeight.w600,
                            fontSize: 16))),
              ),
              const SizedBox(
                height: 20,
              ),
              BannerComponent(),


              /*Container(
                child: SizedBox(
                  height: 200,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: VideoData.items.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = VideoData.items[index];
                      return Card(
                        margin: const EdgeInsets.only(
                            left: 18, right: 10, top: 14, bottom: 10),
                        elevation: 5,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (_)=> videosection()));
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Image.asset(
                                      item.image,
                                    ),
                                  ),
                                  SizedBox.fromSize(
                                    size: const Size(200, 80),
                                    child: ClipOval(
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (_)=> videosection()));
                                          },
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                FontAwesomeIcons.youtube,
                                                color: Colors.redAccent,
                                                size: 40,
                                              ),
                                              Text(
                                                "Watch on Youtube",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ), // <-- Text
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      item.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox.fromSize(
                                        size: const Size(50, 50),
                                        child: ClipOval(
                                          child: Material(
                                            color: Colors.white,
                                            child: InkWell(
                                              onTap: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  const Icon(
                                                    Icons.share_outlined,
                                                    color: Colors.black,
                                                    size: 20,
                                                  ), // <-- Icon
                                                  Text(
                                                    "Share",
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 11,
                                                      color: Colors.black
                                                          .withOpacity(0.8),
                                                    ),
                                                  ), // <-- Text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox.fromSize(
                                        size: const Size(50, 50),
                                        child: ClipOval(
                                          child: Material(
                                            color: Colors.white,
                                            child: InkWell(
                                              onTap: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  const Icon(
                                                    Icons.notes_outlined,
                                                    color: Colors.black,
                                                    size: 20,
                                                  ), // <-- Icon
                                                  Text(
                                                    "Add t..",
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 11,
                                                      color: Colors.black
                                                          .withOpacity(0.8),
                                                    ),
                                                  ), // <-- Text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 0.6,
                    ),
                  ),
                ),
              ),*/
              const SizedBox(
                height: 10,
              ),

              /* SizedBox(
          height: mediaQuery.size.height * 0.44,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: VideoData.items.length,
            itemBuilder: (context, index) {
              var project = VideoData.items[index];
              return SizedBox(
                height: mediaQuery.size.height * 0.40,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: VideoData.items.length,
                  itemBuilder: (context, index) {
                    var project = VideoData.items[index];
                    return CardNewProject(
                      brandImage: VideoData.items[index].image,
                      imageUrl:
                      VideoData.items[index].image,
                      name:
                      VideoData.items[index].name ?? "NA",
                    );
                  },
                ),
              );
            },
          ),
        ),*/



              const SizedBox(
                height: 20,
              ),

              const Padding(
                padding: EdgeInsets.only(left: 19),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Our Customers',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.1,
                            fontWeight: FontWeight.w600,
                            fontSize: 16))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: GridView.builder(
                      itemCount: content.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (_, i) {
                        return GridTile(
                          child: Container(
                            child: InkWell(
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: selectedCardIndex == i ? AppColors.primaryColor : Colors.white, // Set color based on selection
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      content[i].image,
                                      width: 34,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        content[i].title,
                                        style: appLightTextStyle(10, FontWeight.w500, textColor: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  selectedCardIndex = i;
                                  selectedProjectType = content[i].title;// Update selected card index
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ]),
              ),

              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/logo/bg_logo.png',
                height: 80,
                width: 80,
              ),
              const Text(
                'All rights reserved to Eleven11',
                style: TextStyle(
                  fontSize: 14,
                    fontFamily: 'Poppins', fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),

    );
  }


  @override
  void initState() {
    super.initState();

    // Start the animation
    Timer(const Duration(seconds: 8), () {
      setState(() {
        playAnimation = false;
      });
    });
  }
}
