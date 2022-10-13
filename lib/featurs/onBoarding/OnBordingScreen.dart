import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OnBoardingWedgit.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading:const Center(
        // child: Text('Shop Now',style: TextStyle(color: Colors.deepPurple),)),
      ),
      body:  OnBoardingWedgit(),
    );
  }
}
