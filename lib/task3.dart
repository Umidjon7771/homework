import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework_16_march/sms_verification.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Image.asset(
                "assets/third_icons/OTP 1.png",
                height: 300,
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "OTP Verification",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
              ),
              SizedBox(
                height: 12,
              ),
              Text.rich(
                TextSpan(
                  text: "Enter the OTP sent to ",
                  children: [
                    TextSpan(
                      text: "+91 987987333",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "7",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 3,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "7",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 3,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "7",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 3,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "7",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text.rich(
                TextSpan(
                  text: "Didn’t you receive the OTP?",
                  style: TextStyle(fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                      text:  " Resend OTP",
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SMSVerificationApp()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              MaterialButton(
                onPressed: (){},
                color: CupertinoColors.activeBlue,
                height: 80,
                minWidth: 400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text("VERIFY",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
