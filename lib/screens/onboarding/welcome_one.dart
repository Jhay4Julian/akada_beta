import 'package:akada_beta/screens/onboarding/welcome_three.dart';
import 'package:akada_beta/screens/onboarding/welcome_two.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class WelcomeOne extends StatelessWidget {
  const WelcomeOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: 350,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 20.0),
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
                        child: Image.asset('assets/images/firstpagee.png',
                        )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
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
                      const Text('Welcome to Akada.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      const SizedBox(height: 45.0),
                      const Text('A platform where you can connect with academic mentors',
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
                            backgroundColor: Colors.white,
                            radius: 6,
                          ),
                          SizedBox(width: 6),
                          CircleAvatar(
                            backgroundColor: Color(0xffc4c4c4),
                            radius: 5,
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
                            const WelcomeTwo(),
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
            ),
          ],
        ),
      ),
    );
  }
}