import 'package:akada_beta/screens/onboarding/login.dart';
import 'package:flutter/material.dart';

class WelcomeThree extends StatelessWidget {
  const WelcomeThree({ Key? key }) : super(key: key);

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
                const SizedBox(height: 120.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Image.asset('assets/images/thirdpagee.png',
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
                children: [
                  const SizedBox(height: 80.0,),
                  const Text('Book online sessions with mentors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5.0),
                  const Text('Book one-on-one sessions, general session or group sessions with mentors',
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
                        backgroundColor: Color(0xffc4c4c4),
                        radius: 5,
                      ),
                      SizedBox(width: 6),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 6,
                      )
                    ]
                  ),
                  const SizedBox(height: 40.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: const Size(160, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));},
                    child: Text(
                      'Get started',
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