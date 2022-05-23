import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(children: [
          Container(
            height: 100,
            color: Theme.of(context).primaryColor,
            child: const Center(
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 55.0,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: const CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/images/user1.jpg'),
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    const Text(
                      'Hassan Hassani',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Text(
                      'Computer Science',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.blue[100],
                        fontSize: 22.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                      width: 150.0,
                      child: Divider(
                        color: Colors.teal.shade100,
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.school,
                          color: Color(0xff004ce2),
                        ),
                        title: Text(
                          'Federal University of Technology, Akure',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.teal.shade900,
                            ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.phone,
                          color: Color(0xff004ce2),
                        ),
                        title: Text(
                          '+91 62891 18992',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.email,
                          color: Color(0xff004ce2),
                        ),
                        title: Text(
                          'hassani360@futa.edu.ng',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.teal.shade900,
                            ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Edit',
                            style: TextStyle(color: Color(0xff004ce2), fontSize: 20.0)
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
