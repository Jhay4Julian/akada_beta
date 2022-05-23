import 'package:akada_beta/widgets/mentors_list.dart';
import 'package:flutter/material.dart';

class MentorsScreen extends StatelessWidget {
  const MentorsScreen({Key? key}) : super(key: key);

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
                  'All Mentors',
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
                  padding: const EdgeInsets.only(top: 20.0),
                  child: MentorList(),
                ),
              ),
            ),
          ])),
    );
  }
}
