import 'package:akada_beta/screens/onboarding/welcome_three.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeTwo extends StatelessWidget {
  const WelcomeTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 70.0),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() =>
                        const WelcomeThree(),
                        transition: Transition.rightToLeft
                      );
                    },
                    child: const Text('Skip', style: TextStyle(color: Color(0xff828282), fontSize: 18.0),
                    textAlign: TextAlign.left,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Image.asset('assets/images/secondpage.png',
                    )),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 80.0,),
                  const Text('Discover the best mentors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 45.0),
                  const Text('Explore academic resources and search for the best mentors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color(0xffc4c4c4),
                        radius: 5,
                      ),
                      SizedBox(width: 6),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 6,
                      ),
                      SizedBox(width: 6),
                      CircleAvatar(
                        backgroundColor: Color(0xffc4c4c4),
                        radius: 5,
                      )
                    ]
                  ),
                  const SizedBox(height: 50.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: const Size(110, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                    onPressed: () {
                      Get.to(() =>
                        const WelcomeThree(),
                        transition: Transition.rightToLeft
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 22.0,
                    ),
                    ),
                    ),
                  const SizedBox(height: 30.0,)
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}