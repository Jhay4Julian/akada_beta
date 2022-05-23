import 'package:akada_beta/screens/main/mentors_screen.dart';
import 'package:akada_beta/widgets/top_mentors.dart';
import 'package:akada_beta/widgets/top_sessions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
                height: 160,
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(children:  [
                            GestureDetector(
                              onTap: (){},
                              child: const CircleAvatar(
                                radius: 35.0,
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: AssetImage('assets/images/user1.jpg')
                                ),
                              ),
                            ),
                          ]),
                          const Text('Welcome, Hassani',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600
                          ),
                          ),
                          IconButton(
                            iconSize: 35.0,
                            color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.notifications))
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      //Search bar goes here
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15.0),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(width: 0.8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0.8,
                                color: Theme.of(context).primaryColor),
                          ),
                          hintText: 'Search Mentors',
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () => FocusScope.of(context).unfocus(),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      TopMentors(),
                      TopSessions(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        ),
    );
  }
}
