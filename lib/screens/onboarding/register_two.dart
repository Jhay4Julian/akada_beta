import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterSecondScreen extends StatefulWidget {
  const RegisterSecondScreen({ Key? key }) : super(key: key);

  @override
  State<RegisterSecondScreen> createState() => _RegisterSecondScreenState();
}

class _RegisterSecondScreenState extends State<RegisterSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Container(
            height: 250,
            color: Theme.of(context).primaryColor,
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
                          hintText: 'Temp',
                          suffixIcon: Icon(Icons.arrow_drop_down)
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
                          hintText: 'Temp',
                          suffixIcon: Icon(Icons.arrow_drop_down)
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
                          hintText: 'Temp',
                          suffixIcon: Icon(Icons.arrow_drop_down)
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
                          hintText: 'Temp',
                          suffixIcon: Icon(Icons.arrow_drop_down)
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: ElevatedButton(
                        onPressed: (){
                          Get.to(
                            () => const RegisterSecondScreen(),
                            transition: Transition.rightToLeft
                          );
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}