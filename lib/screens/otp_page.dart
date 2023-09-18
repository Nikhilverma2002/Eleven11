import 'package:Eleven11/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'login.dart';

class OtpPage extends StatefulWidget {
  final String text;
  OtpPage({required this.text});
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginscreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 50, right: 320),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment(-0.4, 0.2),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black45,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Image.asset(
                'assets/bg_logo.png',
                height: 165,
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('OTP Verification',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Color(0XFF333333),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(28.0, 20.0, 28.0, 0.0),
              child: GestureDetector(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Enter the OTP sent to ',
                      style: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: .3,
                          color: Color(0xff858585),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                      children: [
                        TextSpan(
                          text: "+91 " + widget.text,
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff4E4E4E),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins"),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              alignment: Alignment.center,
              child: OtpTextField(
                margin: EdgeInsets.symmetric(horizontal: 10),
                numberOfFields: 4,
                borderColor: Color(0xFFB8B8B8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                borderWidth: 1.5,
                focusedBorderColor: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                fieldWidth: 60,
                textStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 55,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFb22930),
                ),
                child: const Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Homepage()),);
                },
                //color: Theme.of(context).primaryColor,
            ),
            ),
          ]),
        ),
      ),
    );
  }
}
