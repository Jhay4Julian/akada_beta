import 'package:akada_beta/screens/onboarding/login.dart';
import 'package:akada_beta/screens/onboarding/register_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
              height: 220,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Image.asset('assets/images/splash.png'),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Text('Register',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff004ce2),
                        ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Padding(
                        padding: EdgeInsets.only(left: 40.0, right: 40.0),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Email address',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye_sharp)
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Confirm Password',
                            suffixIcon: Icon(Icons.remove_red_eye_sharp)
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: ElevatedButton(
                          onPressed: (){
                            // // Get.to(
                            // //   () => const RegisterSecondScreen(),
                            // //   transition: Transition.rightToLeft
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                            fixedSize: const Size(280, 55),
                          ),
                          child: const Text('Next',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w400
                          )
                          )
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Already have an account?',
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Get.to(
                              () => const LoginScreen(),
                              transition: Transition.downToUp
                            );
                          },
                          child: const Text('Log In',
                          style: TextStyle(color: Color(0xff004ce2)),
                          ),
                        ),
                      )
                    ],
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