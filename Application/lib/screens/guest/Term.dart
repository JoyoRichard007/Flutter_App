import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  const TermScreen({super.key});

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            "Terms & Conditions ",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 15.0,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
                child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        "A Terms and Conditions agreement is where you let the public know the terms, rules and guidelines for using your website or mobile app. They include topics such as acceptable use, restricted behavior and limitations of liability.This article will get you started with creating your own custom Terms and Conditions agreement. We've also put together a Sample Terms and Conditions Template that you can use to help you write your own.A Terms and Conditions agreement is where you let the public know the terms, rules and guidelines for using your website or mobile app. They include topics such as acceptable use, restricted behavior and limitations of liability.This article will get you started with creating your own custom Terms and Conditions agreement. We've also put together a Sample Terms and Conditions Template that you can use to help you write your own.A Terms and Conditions agreement is where you let the public know the terms, rules and guidelines for using your website or mobile app. They include topics such as acceptable use, restricted behavior and limitations of liability.This article will get you started with creating your own custom Terms and Conditions agreement. We've also put together a Sample Terms and Conditions Template that you can use to help you write your own.A Terms and Conditions agreement is where you let the public know the terms, rules and guidelines for using your website or mobile app. They include topics such as acceptable use, restricted behavior and limitations of liability.This article will get you started with creating your own custom Terms and Conditions agreement. We've also put together a Sample Terms and Conditions Template that you can use to help you write your own"),
                  ]),
            )),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    )),
                onPressed: () => print("Accepter"),
                child: Text("Accepter & continuer")),
          ]),
        ),
      ),
    );
  }
}
