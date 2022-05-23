import 'dart:ui';

import 'package:akada_beta/data/data.dart';
import 'package:akada_beta/models/mentors.dart';
import 'package:akada_beta/screens/main/mentors_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopMentors extends StatelessWidget {
  _buildTopMentors(BuildContext context, Mentor mentor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 3.0, color: const Color(0xFFBBDEFB))),
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                child: Row(
                  children: [
                  CircleAvatar(
                    radius: 54.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage(mentor.imageUrl),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mentor.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        mentor.school,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(children: [
                    Icon(Icons.cases_outlined, color: Theme.of(context).primaryColor),
                    const SizedBox(width: 10.0),
                    Text(mentor.work)
                  ]),
                  Row(children: [
                    Icon(Icons.pie_chart_sharp, color: Theme.of(context).primaryColor),
                    const SizedBox(width: 10.0),
                    Text(mentor.interests)
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Top Mentors',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            TextButton(
                onPressed: () {
                      Get.to(() =>
                        const MentorsScreen(),
                        transition: Transition.rightToLeft
                      );
                    },
                child: const Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ))
          ]),
          SizedBox(
            height: 225,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: mentors.length - 3,
                itemBuilder: (BuildContext context, int index) {
                  Mentor mentor = mentors[index];
                  return _buildTopMentors(context, mentor);
                }),
          ),
        ],
      ),
    );
  }
}
