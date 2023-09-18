import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'content.dart';
import 'login.dart';

class sliding_screen extends StatefulWidget {
  const sliding_screen({Key? key}) : super(key: key);

  @override
  State<sliding_screen> createState() => _sliding_screenState();
}

class _sliding_screenState extends State<sliding_screen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: content.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 9, right: 9, bottom: 50),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () => _controller.jumpToPage(2),
                            child: Align(
                              alignment: const Alignment(0.9, -1),
                              child: Text(
                                currentIndex == content.length - 1
                                    ? " "
                                    : "Skip",
                                style: const TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF6D6D6D),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          SvgPicture.asset(
                            content[i].image,
                            width: double.infinity,
                            height: 300,
                            fit: BoxFit.fill,
                            allowDrawingOutsideViewBox: true,
                          ),
                          /*Image.asset(

                            content[i].image,

                          ),*/
                          const SizedBox(height: 50),
                          Text(
                            content[i].title,
                            textAlign : TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            content[i].desc,
                            textAlign : TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                content.length,
                    (index) => Container(
                  height: 8,
                  width: currentIndex == index ? 16 : 8,
                  margin: const EdgeInsets.only(right: 3, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffdf2027),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child : SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFb22930),
                padding: const EdgeInsets.all(10),
                fixedSize: const Size.fromWidth(100),
              ),
              child: Text(
                textAlign : TextAlign.center,
                currentIndex == content.length - 1 ? "Start" : "Next",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              onPressed: () {
                if (currentIndex == content.length - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const loginscreen()),
                  );
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 60),
                  curve: Curves.bounceIn,
                );
              },
            ),
          ),
          ),
          //SizedBox(height: 10,),
        ],
      ),
    );
  }
}
