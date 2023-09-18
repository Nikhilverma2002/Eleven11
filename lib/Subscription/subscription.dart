import 'package:Eleven11/Subscription/subscriptionModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

class subscription extends StatefulWidget {
  const subscription({Key? key}) : super(key: key);

  @override
  State<subscription> createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {
  PageController controller = PageController();
  final List<MyHomePageModel> _modelList = [
    MyHomePageModel(
      image: "assets/house.png",
      title: "Builder (Silver)",
      desc: [
        "Property promotion on website",
        "Photoshoot & Reels of property",
        "Google & meta ads.",
        "Relationship Manager for Assistance",
        "Customer Support",
        "Privacy to Leads"
      ],
      color: Color(0xffC8C8C8),
      price: "\u{20B9}${4999}/3Mo.   ",
      line: "10,000",
    ),
    MyHomePageModel(
      image: "assets/residential.png",
      title: "Builder (Gold)",
      desc: [
        "All features of silver plan",
        "Email & Whatsapp Broadcasting",
        "Personal field assistance",
        "Showing property on behalf",
        "Reels post on instagram page",
        "Verified Badge"
      ],
      color: Color(0xffF9B31A),
      price: "\u{20B9}${9999}/3Mo.   ",
      line: "20,000",
    ),
    MyHomePageModel(
      image: "assets/broker.png",
      title: "Agent",
      desc: [
        "3 free listing property [For 1year]",
        "One featured ad.",
        "Customer Support",
        "Verified badge"
            "E-card",
        /* "<Mystery Box Offer>",
        "   1 Lead @ \u{20B9}${99} only",
        "   10 Leads @ \u{20B9}${499} only",
        "   25 Leads @ \u{20B9}${999} only",*/
      ],

      color: Color(0xff98d8f8),
      price: "\u{20B9}${999}[Lifetime]   ",
      line: "10,000",
    ),

    MyHomePageModel(
      image: "assets/money.png",
      title: "Buyer",
      desc: [
        "10 property will be shown by Relationship Manager",
        "Assured gifts on referral",
        "We will give you leads till 90days @\u{20B9}${9999} with Moneyback (T&C)*"
      ],
      color: Color(0xffD6E5FF),
      price: "\u{20B9}${999}/3Mo.  ",
      line: "\u{20B9}${4999}",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    int _curr = 0;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
        children: [

          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              onPageChanged: (num) {
                setState(() {
                  _curr = num;
                });
              },
              children: _modelList.map((model) => Pages(model: model)).toList(),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _modelList.length,
                    (index) => Container(
                  height: 8,
                  width: _curr == index ? 16 : 8,
                  margin: const EdgeInsets.only(right: 3, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff101F43),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
            width: double.infinity,
            child: ElevatedButton(
              child: const Text(
                ' More ',
                style: TextStyle(
                  fontSize: 15,
                  backgroundColor: Colors.transparent,
                  fontFamily: 'Poppins',
                ),
              ),
              onPressed: () {
                if (_curr != _modelList.length - 1) {
                  controller.jumpToPage(_curr + 1);
                } else {
                  controller.jumpToPage(0);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final MyHomePageModel model;

  Pages({required this.model});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 8,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        shadowColor: Color(0xff888888),
        color: model.color,
        child: SizedBox(
          width: 280,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                    decoration: const BoxDecoration(
                        color: Color(0xff101F43),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(10),
                        ) // green shaped
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            model.price,
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            model.line,
                            style: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                decoration: TextDecoration.lineThrough,
                                color: Colors.white),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  model.image,
                  height: 75,
                  width: 75,
                ),
                const SizedBox(height: 15),
                Text(
                  model.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height:8),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    model.desc.map((x) => "• $x\n").reduce((x, y) => "$x$y"),
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 13, fontFamily: 'Poppins'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff101F43),
                      shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    ),
                    child: const Text(
                      'Buy Plan',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
    ),
    ),
    ),
      ),
    );
  }
}
