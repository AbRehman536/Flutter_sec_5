import 'package:flutter/material.dart';
import 'package:flutter_sec_5/models/onBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController controller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(title: 'First Page', image: 'assets/images/first.jpg'),
    OnBoardingModel(title: 'Second Page', image: 'assets/images/first.jpg'),
    OnBoardingModel(title: 'Third Page', image: 'assets/images/first.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
                itemCount: onBoardingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i){
                return Column(children: [
                  Image.asset(onBoardingList[i].image.toString()),
                  Text(onBoardingList[i].title.toString(),
                    style: TextStyle(fontSize: 30),),
                  Text("Skip",style: TextStyle(fontSize: 25),),

                ],);

            }),
          ),
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  onBoardingList.length,
              effect:  ScaleEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          )
        ],
      ),

    );
  }
}
