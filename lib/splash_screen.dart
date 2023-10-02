import 'package:flutter/material.dart';
import 'constant.dart';
import 'price_screen.dart';

class SplashScreen extends StatefulWidget {
  static String Id = 'spashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPaddingContainerColor,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bitcoin Tracker is an application that is designed for converting your currency to bitcoin currency such as USD, NZD and others currencies as well.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          kScaffoldColor), // Change to the desired color
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, PriceScreen.Id);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.calculate,
                          color: kPaddingContainerColor,
                          size: kButtonIconSize,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Go to calculator",
                          style: TextStyle(
                            color: kPaddingContainerColor,
                            fontSize: kButtonWordSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
