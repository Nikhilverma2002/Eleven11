import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homepage.dart';
import 'otp_page.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [

              /*Padding(
                padding: const EdgeInsets.only(top: 50 ,right: 320),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment(5,0.2),
                      child: Icon(Icons.arrow_back_rounded,
                        color: Colors.black45,
                        size: 28,),
                    ),
                  ),
                ),
              ),*/

              const SizedBox(height: 80),

              Center(
                child: Image.asset(
                  'assets/bg_logo_full.png',
                  height: 160,
                  width: double.infinity,
                ),
              ),

              const SizedBox(height: 20,),
              const Text("OTP Verification",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.4,
                  fontFamily: 'Poppins',
                ),
              ),

              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),

                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Color(0xFF858585)),
                      children: <TextSpan>[
                        TextSpan(text: 'We will send  you an ',),
                        TextSpan(text: 'One time Password ',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                        TextSpan(text: 'on this '),
                        //TextSpan(text: "\n"),
                        //TextSpan(text: "\t \t \t \t \t \t \t \t"),
                        TextSpan(text: 'mobile number',),
                      ],
                    ),),
                ),
              ),

              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                child: TextField(

                  maxLength: 10,
                  maxLengthEnforcement:  MaxLengthEnforcement.enforced,
                  keyboardType: TextInputType.number,
                  onChanged: (text) => setState(() {
                    currentText = text;
                  }),
                  decoration: InputDecoration(
                    labelText: '\t\tMobile Number',
                    labelStyle: const TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w300 , fontSize: 15.0, color: Color(0xff757575)),
                    alignLabelWithHint: true,
                    hintStyle: const TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w300 , fontSize: 16.0, color: Color(0xff757575)),

                 /*   prefixIcon: CountryCodePicker(
                      initialSelection: 'IN',
                      hideMainText: true,
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    ),*/
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),


              Container(
                height: 45,
                margin: const EdgeInsets.only(left: 20,right: 20),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFb22930),
                  ),
                  child: const Text("Get OTP",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> OtpPage(text: currentText)),);
                  },
                  /* color: Color(0xFF3F51B5),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),*/
                ),
              ),

              const Padding(
                padding : EdgeInsets.all(20),
                child : Text("OR",
                  style: TextStyle(color: Colors.black,fontFamily: "Poppins",fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              ),
              Container(
                height: 55,
                margin: const EdgeInsets.only(left: 20,right: 20,top: 0),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Colors.orangeAccent,
                    )
                ),
                child: OutlinedButton.icon(

                  icon: Image.asset("assets/Bitmap Copy.png",
                    height: 35,
                    width: 35,
                  ),
                  label: const Text("Continue with Google",
                      textAlign : TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff828282),
                          fontWeight: FontWeight.w500, fontFamily: "Poppins",
                          fontSize: 15.0)

                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xffF3C973), width: 1),
                    //backgroundColor: Colors.white
                  ),
                  onPressed: () {},
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=> Homepage()),);
                  },
                  child: const Text.rich(

                    TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: '\t Signup',
                            style: TextStyle(
                              color: Color(0xffEE7B23),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
