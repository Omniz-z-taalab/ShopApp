import 'package:flutter/material.dart';
import 'package:shopapp/core/ulits/const/constans.dart';
import 'package:shopapp/core/ulits/const/spase.dart';
import 'package:shopapp/featurs/Login/LoginPage.dart';
import 'package:shopapp/featurs/Login/Loginwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Wedgits/FadeAnimationWedgit.dart';

class PageViewModel {
  String? image;
  String? title;
  String? body;

  PageViewModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingWedgit extends StatefulWidget {
  @override
  State<OnBoardingWedgit> createState() => _OnBoardingWedgitState();
}

class _OnBoardingWedgitState extends State<OnBoardingWedgit> {
  var pageController = PageController();

  bool isLast = false;

  List<PageViewModel> boarding = [
    PageViewModel(
        image: '${AppImage().onBoardingImage1}',
        title: 'OnBoard 1 Title',
        body: 'OnBoard 1 body'),
    PageViewModel(
        image: '${AppImage().onBoardingImage2}',
        title: 'OnBoard 2 Title',
        body: 'OnBoard 2 body'),
    PageViewModel(
        image: '${AppImage().onBoardingImage2}',
        title: 'OnBoard 3 Title',
        body: 'OnBoard 3 body'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (int index){
              if(index == boarding.length -1){
               setState(() {
                 isLast = true;
               });
                print('last');
              }else{
                setState(() {
                  isLast = false;
                });
              }
            },
            itemBuilder: (context, index) => buildBoardItem(boarding[index]),
            itemCount: 3,
            physics: BouncingScrollPhysics(),
            controller: pageController,
          ),
        ),
        space(40, 0),
        Row(
          children: [
            SmoothPageIndicator(
                controller: pageController, // PageController
                count: 3,
                effect: ScrollingDotsEffect(
                activeStrokeWidth: 2.6,
                dotColor: Colors.deepPurple,
                activeDotColor: Colors.deepPurple.shade300,
                activeDotScale: 1.3,
    maxVisibleDots: 5,
    radius: 8,
    spacing: 10,
    dotHeight: 12,
    dotWidth: 12,
    ),
                onDotClicked: (index) {}),
            Spacer(),
            FloatingActionButton(
                backgroundColor: Colors.deepPurple,
                onPressed: () {
                  if(isLast ){
                    navigateTo(context: context, widget: Login());
                  }else{
                    pageController.nextPage(
                        duration: Duration(seconds: 3), curve: Curves.bounceOut);
                  }

                },
                child: Icon(Icons.arrow_forward_ios_sharp))
          ],
        )
      ]),
    );
  }

  Widget buildBoardItem(PageViewModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage('${model.image}'),
              excludeFromSemantics: true,
            ),
          ),
          space(10, 0),
          Text(
            '${model.title}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          space(10, 0),
          Text(
            '${model.body}',
            style: TextStyle(fontSize: 14),
          ),
          space(10, 0),

          // ListView.builder(itemBuilder: (context, index) => ));
        ],
      );
}
