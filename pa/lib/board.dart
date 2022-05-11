import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            color: Colors.red,
            child: Center(
                child: Column(
              children: [Text('Page 1')],
            )),
          ),
          Container(
            color: Colors.orange,
            child: Center(child: Text('Page 2')),
          ),
          Container(
            color: Colors.yellow,
            child: Center(child: Text('Page 3')),
          ),
          Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Page 4'),
                ElevatedButton(
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setBool('toHome', true);

                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text('Mulai!'))
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.red,
        height: 40,
        child: Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.orangeAccent,
                  ),
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
