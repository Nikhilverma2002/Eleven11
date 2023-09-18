import 'package:Eleven11/screens/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../App_Theme/app_colors.dart';
import '../../App_Theme/app_style.dart';
import 'navigator.dart';

class HomeDrawer extends StatelessWidget {
  List? allProjectsList;
  List? propertyForSellList;
  List? propertyForRentList;
  List? allAgentsList;

  HomeDrawer(
      {super.key,
        this.allProjectsList,
        this.propertyForRentList,
        this.propertyForSellList,
        this.allAgentsList});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Drawer(
      elevation: 10,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //height: 300,
                color: AppColors.background,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: "Nikhil" == null
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login to your Account",
                        style: appLightTextStyle(12, FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Material(
                        color: AppColors.white,
                        borderRadius: appBorRadius8(),
                        child: InkWell(
                          onTap: () {
                            goToNextPage(
                                context: context, page:OtpPage(text: '1235',

                            ));
                          },
                          borderRadius: appBorRadius8(),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.primary, width: 1.5),
                                borderRadius: appBorRadius8()),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 6),
                              child: Text(
                                "Login",
                                style: appLightTextStyle(
                                    14, FontWeight.w400,
                                    textColor: AppColors.primary),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                      : Container(
                    width: size.width,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 6, bottom: 6),
                      child: Text(
                        "Hi Nikhil !",
                        style: appDarkTextStyle(17, FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Text(
                  "Support",
                  style: appDarkTextStyle(20, FontWeight.w700),
                ),
              ),
              InkWell(
                onTap: () {
                  goToNextPage(
                      context: context, page: OtpPage(text: '1235',

                  ));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: Image.asset(
                        "assets/drawer/contactus.png",
                        color: AppColors.primary,
                        scale: 2.5,
                        width: 25,
                        height: 25,
                      ),
                    ),
                    Text(
                      "Contact Us",
                      style: appDarkTextStyle(14, FontWeight.w400),
                    )
                  ],
                ),
              ),
              Divider(
                color: AppColors.grey,
                thickness: 1,
                height: 1,
              ),
              InkWell(
                onTap: () {
                 /* goToNextPage(
                      context: context,
                      page: DocsPage(
                        callId: 1,
                      ));*/
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: Image.asset(
                        "assets/drawer/info.png",
                        color: AppColors.primary,
                        scale: 2.5,
                        width: 25,
                        height: 25,
                      ),
                    ),
                    Text(
                      "About Us",
                      style: appDarkTextStyle(14, FontWeight.w400),
                    )
                  ],
                ),
              ),
              Divider(
                color: AppColors.grey,
                thickness: 1,
                height: 1,
              ),
              InkWell(
                onTap: () {
                 /* goToNextPage(
                      context: context,
                      page: DocsPage(
                        callId: 2,
                      ));*/
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: Image.asset(
                        "assets/drawer/terms-and-conditions.png",
                        color: AppColors.primary,
                        scale: 2.5,
                        width: 25,
                        height: 25,
                      ),
                    ),
                    Text(
                      "Terms & Conditions",
                      style: appDarkTextStyle(14, FontWeight.w400),
                    )
                  ],
                ),
              ),
              Divider(
                color: AppColors.grey,
                thickness: 1,
                height: 1,
              ),
              InkWell(
                onTap: () {
                  //goToNextPage(context: context, page: const DocsPrivacyPage());
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: Image.asset(
                        "assets/drawer/insurance.png",
                        color: AppColors.primary,
                        scale: 2.5,
                        width: 25,
                        height: 25,
                      ),
                    ),
                    Text(
                      "Privacy Policy",
                      style: appDarkTextStyle(14, FontWeight.w400),
                    )
                  ],
                ),
              ),
              Divider(
                color: AppColors.grey,
                thickness: 1,
                height: 1,
              ),

              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 30,
                    onPressed: () {
                      //_launchURL('https://www.facebook.com/profile.php?id=100088913020707');
                    },
                    icon: Icon(FontAwesomeIcons.facebook,color: Colors.blueAccent,size: 30,),
                  ),
                  IconButton(
                    iconSize: 30,
                    onPressed: () {
                     // _launchURL('https://www.instagram.com/housingcart.in/');
                    },
                    icon: Icon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,size: 30,),
                  ),
                  IconButton(
                    iconSize: 30,
                    onPressed: () {
                     // _launchURL('https://www.youtube.com/@HousingCart788');
                    },
                    icon: Icon(FontAwesomeIcons.youtube,color: Colors.redAccent,size: 30,),
                  ),
                  IconButton(
                    iconSize: 30,
                    onPressed: () {
                     // _launchURL('https://www.linkedin.com/company/housingcart/mycompany');
                    },
                    icon: Icon(FontAwesomeIcons.linkedin,color: Colors.blueAccent,size: 30,),
                  ),
                  IconButton(
                    iconSize: 30,
                    onPressed: () {
                     //_launchURL('https://wa.me/919109958324');
                    },
                    icon: Icon(FontAwesomeIcons.whatsapp,color: Colors.green,size: 30,),
                  ),
                ],
              ),
              SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}


